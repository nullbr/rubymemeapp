class ReviewsController < ApplicationController
    def index
        @meme = Meme.find(params[:meme_id])
        @reviews = @meme.reviews
    end
end
