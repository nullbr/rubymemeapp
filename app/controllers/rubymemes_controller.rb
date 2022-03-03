class RubymemesController < ApplicationController
  def index
    @rubymemes = Meme.all
  end
end
