class MemesController < ApplicationController
  before_action :set_meme, only: %i[show update edit destroy]
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show new create]

  def index
    @memes = case params[:filter]
             when 'oldest'
               Meme.ascorder
             when 'gif'
               Meme.gif
             when 'png_or_jpg'
               Meme.png_or_jpg
             else
               Meme.descorder
             end
  end

  def show
    @likers = @meme.likers
    @categories = @meme.categories
    @like = current_user.likes.find_by(meme_id: @meme.id) if current_user
  end

  def edit; end

  def update
    if @meme.update(meme_params)
      redirect_to @meme, notice: 'Meme successfuly updated'
    else
      render :edit
    end
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.create(meme_params)
    @meme.user = current_user
    if @meme.save
      redirect_to @meme, notice: 'Meme saved successfuly'
    else
      render :new
    end
  end

  def destroy
    @meme.destroy
    redirect_to root_path, alert: 'Meme deleted successfuly'
  end

  private

  def set_meme
    @meme = Meme.find_by!(slug: params[:id])
  end

  def meme_params
    params.require(:meme).permit(:name, :description, :image_file_name, category_ids: [])
  end
end
