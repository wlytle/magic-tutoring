class SessionsController < ApplicationController
  before_action :new_user, only: [:new, :create]

  def new
  end

  def create
    raise params
  end

  def destroy
  end

  private

  def new_user
    #set params on login in intermediate page to be either session[:apprentice] = true or session[:professor] = true

    #Use this when everything is wired up
    # if session[:apprentice]
    #@user = Apprentice.new
    #session[:apprentice] = true #delete this line when wired up
    # elsif params[:professor]
    #     @user = Professor.new
    # else
    #     flash[:danger] = "You be either a professor or apprentice to login"
    #     #Set correct path when we meet
    #     redirect_to welocme_intermediate_path
    # end
  end

  def user_params
  end
end
