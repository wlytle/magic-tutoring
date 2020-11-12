class ProfessorAvailabilitiesController < ApplicationController
  before_action :get_professor_availability, only: [:edit, :update]

  def new
    @professor = current_user
    @pa = ProfessorAvailability.new
  end

  def create
    @professor = current_user
    @professor.professor_availabilities.build(pa_params)
    if @professor.save
      redirect_to new_professor_availability_path
    else
      flash[:danger] = "Availability must have a start and end time"
      redirect_to new_professor_availability_path
    end
  end

  def update
    if @pa.update(pa_params)
      redirect_to new_professor_availability_path
    else
      render "new"
    end
  end

  private

  def pa_params
    params.require(:professor_availability).permit(:date, :begin_time, :finish_time)
  end

  def get_professor_availability
    @pa = ProfessorAvailability.find(params[:id])
  end
end
