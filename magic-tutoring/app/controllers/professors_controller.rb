class ProfessorsController < ApplicationController

  before_action :houses, only: [:new, :create, :edit, :update]
  before_action :get_professor, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:index, :show, :new, :create]

  def show
    @conclaves = @professor.conclaves
  end

  def index
    @professors = Professor.all
  end

  def new
    @professor = Professor.new
    get_subjects
  end

  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      session[:user_id] = @professor.id
      session[:user_type] = "professor"
      redirect_to @professor
    else
      get_subjects
      render :new
    end
  end

  def edit
    get_subjects
  end

  def update
    if @professor.update(professor_params)
      redirect_to @professor
    else
      @subjects = Subject.all
      render :edit
    end
  end

  def destroy
    @professor.destroy
    session.delete :user_id
    session.delete :user_type
    flash[:message] = "You have self destructed."
    redirect_to welcome_path    
  end

  private

  def professor_params
    params.require(:professor).permit(:name, :house, :subject_id, :availability, :username, :password)
  end

  def get_professor
    @professor = Professor.find(params[:id])
  end

  def get_subjects
    @subjects = Subject.all
  end

  def houses
    @houses = ["Horned Serpent", "Wampus", "Thunderbird", "Pukwudgie"]
  end
end
