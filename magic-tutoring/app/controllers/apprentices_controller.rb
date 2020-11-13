class ApprenticesController < ApplicationController
  before_action :houses, only: [:new, :edit]
  before_action :find_apprentice, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:new, :create]

  def show
    #prevent students from viewing and altering others' show pages
    redirect_to welcome_path unless @apprentice == current_user
    @conclaves = @apprentice.conclaves
  end

  def new
    @apprentice = Apprentice.new
    find_subjects
  end

  def create
    @apprentice = Apprentice.new(apprentice_params)
    if @apprentice.save
      session[:user_id] = @apprentice.id
      session[:user_type] = "apprentice"
      redirect_to @apprentice
    else
      houses
      render :new
    end
  end

  def update
    if @apprentice.update(apprentice_params)
      redirect_to @apprentice
    else
      houses
      render :edit
    end
  end

  def destroy
    @apprentice.destroy
    session.delete :user_id
    session.delete :user_type
    flash[:message] = "You have self destructed."
    redirect_to welcome_path
  end

  private

  def find_apprentice
    @apprentice = Apprentice.find(params[:id])
  end

  def apprentice_params
    params.require(:apprentice).permit(:name, :username, :house, :year, :password, :password_confirmation)
  end

  def houses
    @houses = ["Horned Serpent", "Wampus", "Thunderbird", "Pukwudgie"]
  end

  def find_subjects
    @subjects = Subject.all
  end
end
