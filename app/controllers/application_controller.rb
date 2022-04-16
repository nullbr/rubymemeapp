class ApplicationController < ActionController::Base
  private

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: 'Please sing in first!'
    end
  end

  def current_user?(user)
    current_user == user || current_user.admin_status
  end

  helper_method :current_user?
end
