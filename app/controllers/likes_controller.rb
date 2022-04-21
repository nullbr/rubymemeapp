class LikesController < ApplicationController
  before_action :require_signin

  def create
    @meme = Meme.find(params[:meme_id])
    @meme.likes.create!(user: current_user)
    redirect_to @meme
  end

  def destroy
    like = current_user.likes.find(params[:id])
    like.destroy

    meme = Meme.find(params[:meme_id])
    redirect_to meme
  end
end
