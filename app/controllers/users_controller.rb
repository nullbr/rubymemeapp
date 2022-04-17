class UsersController < ApplicationController
  before_action :require_signin, except: %i[new create]
  before_action :require_admin, only: [:index]
  before_action :require_correct_user, only: %i[edit update destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user), notice: 'User successfully created'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update_attributes(user_params)
      redirect_to edit_user_path, notice: 'User was successfully updated'
    else
      render 'edit'
    end
  end

  def destroy
    session[:user_id] = nil
    @user.destroy
    redirect_to signup_path, alert: 'Account was successfully deleted'
  end

  private

  def require_correct_user
    @user = User.find(params[:id])
    redirect_to root_path, alert: 'Unauthorized access!' unless current_user?(@user)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile_image)
  end
end
