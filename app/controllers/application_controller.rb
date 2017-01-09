class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(access_login_path)
    end
  end

  def is_admin
    user = User.find(session[:user_id])
    unless user.admin?
      redirect_to('/')
    end
  end

  def is_editor
    user = User.find(session[:user_id])
    unless user.editor?
        redirect_to('/')
    end
  end

  def is_hasher
    user = User.find(session[:user_id])
    unless user.hasher?
      redirect_to('/')
    end
  end

  def is_user
    user = User.find(session[:user_id])
    unless user.user?
      redirect_to('/')
    end
  end

end
