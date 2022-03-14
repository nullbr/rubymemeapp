class MemesController < ApplicationController
  def index
    @memes = Meme.descorder
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    if @meme.update(meme_params)
      redirect_to @meme
    else
      render :edit
    end
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.create(meme_params)
    if @meme.save
        redirect_to @meme
    else
      render :new
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to root_path
  end

private

  def meme_params
    params.require(:meme).
        permit(:name, :description, :author, :image_file_name) 
  end

end
