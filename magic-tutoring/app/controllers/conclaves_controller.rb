class ConclavesController < ApplicationController
  def show
    @conclave = Conclave.find(params[:id])
  end

  def new
    @subject = Subject.find(params[:id])
    @apprentice = current_user
    locations
    init_conclave
  end

  def create
    @apprentice = current_user
    availability = ProfessorAvailability.find(params[:availability])
    professor = availability.professor
    date = availability.date
    begin_time = availability.begin_time
    finish_time = availability.finish_time

    @apprentice.conclaves.build(professor: professor, location: params[:conclave][:location], date: date, begin_time: begin_time, finish_time: finish_time)
    if @apprentice.save
      redirect_to @apprentice
    else
      render :new
    end
  end

  private

  def conclave_params
    params.require(:conclave).permit(:location)
  end

  def locations
    @locations = ["Solarium", "West Dungeons", "Hallowed Tree", "Fauna Wing", "Thaumaturgy Labs", "Herbology Dome", "Skiliworg Fields"]
  end

  def init_conclave
    @conclave = Conclave.new
  end
end
