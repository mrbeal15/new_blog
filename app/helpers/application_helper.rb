module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:current_user_id]) if session[:current_user_id]
  end

  def logged_in?
    session[:current_user_id] != nil
  end
end
