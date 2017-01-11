module ApplicationHelper

  def error_messages_for(object)
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end

  def user_is_logged_in?
    !!session[:user_id]
  end

  def is_admin?
    logger.info current_user.name
  end
end
