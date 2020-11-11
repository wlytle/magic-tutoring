module SessionsControllerHelper
  def log_in
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:user_type] = params[:user_type]
      redirect_to @user
    else
      flash[:danger] = "Incorrect username or password"
      redirect_to new_session_path
    end
  end
end
