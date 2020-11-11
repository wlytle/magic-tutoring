class SessionsController < ApplicationController
  skip_before_action :authorized

  def new
  end

  def create
    if params[:user_type] == "apprentice"
      @user = Apprentice.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        session[:user_type] = params[:user_type]
        redirect_to @user
      else
        flash[:danger] = "Incorrect username or password"
        redirect_to new_session_path
      end
    elsif params[:user_type] == "professor"
      @user = Professor.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        session[:user_type] = params[:user_type]
        redirect_to @user
      else
        flash[:danger] = "Incorrect username or password"
        redirect_to new_session_path
      end
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
