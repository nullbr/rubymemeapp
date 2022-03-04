class RubymemesController < ApplicationController
  def index
    @rubymemes = Meme.all
  end

  def show
    @rubymemes = Meme.find(params[:id])
  end
end
