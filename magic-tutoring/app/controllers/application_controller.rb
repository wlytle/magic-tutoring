class ApplicationController < ActionController::Base
  def current_user
    if session[:user_type] == "apprentice"
      return Apprentice.find(session[:user_id])
    elsif session[:user_type] == "professor"
      return Professor.find(session[:user_id])
    else
      return nil
    end
  end

  def logged_in?
    !!current_user
  end
end
