class ReviewsController < ApplicationController
  before_action :set_meme_or_user
  before_action :require_signin
  before_action :require_correct_user_or_admin, only: %i[edit update destroy]

  def index
    @reviews = @object.reviews
  end

  def edit
    @review = @object.reviews.find(params[:id])
  end

  def update
    @review = @object.reviews.find(params[:id])
    if @review.update(review_params)
      redirect_to meme_reviews_path(@meme), notice: 'Review updated successfuly'
    else
      render :edit
    end
  end

  def new
    @review = @object.reviews.new
  end

  def create
    @review = @object.reviews.new(review_params)

    if @review.save
      redirect_to meme_reviews_path(@object), notice: 'Review submitted'
    else
      render :new
    end
  end

  private

  def require_correct_user_or_admin
    @review = @object.reviews.find(params[:id])
    if params[:user_id]
      current_user
      redirect_to root_path unless current_user?(@user)
    else
      current_user
      redirect_to root_path unless current_user.admin_status == true || current_user.id == @review.user_id
    end
  end

  def review_params
    defaults = {username: current_user.name, email: current_user.email, user_id: current_user.id }
    params.require(:review).permit(:username, :email, :review, :stars, :user_id).reverse_merge!(defaults)
  end

  def set_meme_or_user
    @object = if params[:meme_id].nil?
                User.find(params[:user_id])
              else
                Meme.find(params[:meme_id])
              end
  end
end
