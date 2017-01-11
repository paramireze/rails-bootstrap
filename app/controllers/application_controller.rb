class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #set some application wide variables
  before_action :current_user
  before_action :is_admin

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(access_login_path)
    end
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def is_admin
    return unless session[:user_id]
    @is_admin ||= current_user.is_admin
  end
end
