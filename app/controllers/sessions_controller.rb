class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      redirect_to user, notice: "Welcome back #{user.name.capitalize}!"
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy; end
end
