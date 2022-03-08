class MemesController < ApplicationController
  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    meme_params = 
      params.require(:meme).
        permit(:name, :description, :author, :image_url) 
    @meme.update(meme_params)
    redirect_to @meme
  end

end
