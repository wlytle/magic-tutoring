class SessionsController < ApplicationController
  skip_before_action :authorized
  include SessionsControllerHelper

  def new
  end

  def create
    case params[:user_type]
    when "apprentice"
      @user = Apprentice.find_by(username: params[:username])
      log_in
    when "professor"
      @user = Professor.find_by(username: params[:username])
      log_in
    else
      flash[:danger] = "Must be either an apprentice or professor"
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete :user_id
    session.delete :user_type
    flash[:message] = "Thank you for studying. See you next time."
    redirect_to welcome_path
  end
end
