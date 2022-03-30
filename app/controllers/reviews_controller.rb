class ReviewsController < ApplicationController
  before_action :set_meme

  def index
    @reviews = @meme.reviews
  end

  def edit
    @review = @meme.reviews.find(params[:id])
  end

  def update
    @review = @meme.reviews.find(params[:id])
    if @review.update(review_params)
      redirect_to meme_reviews_path(@meme), notice: 'Review updated successfuly'
    else
      render :edit
    end
  end

  def new
    @review = @meme.reviews.new
  end

  def create
    @review = @meme.reviews.new(review_params)

    if @review.save
      redirect_to meme_reviews_path(@meme), notice: 'Review submitted'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:username, :email, :review, :stars)
  end

  def set_meme
    @meme = Meme.find(params[:meme_id])
  end
end
