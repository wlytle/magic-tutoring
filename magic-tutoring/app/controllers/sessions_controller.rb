class SessionsController < ApplicationController
  skip_before_action :authorized
  include SessionsControllerHelper

  def new
  end

  def create
    case params[:user_type]
    when "apprentice"
      #if user is an apprentice and pass login authentication show them to thier show page
      @user = Apprentice.find_by(username: params[:username])
      log_in
    when "professor"
      #if user is an prof and pass login authentication show them to thier show page
      @user = Professor.find_by(username: params[:username])
      log_in
    else
      #if user did not select apprentice or profeesor
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
