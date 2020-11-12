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

    @conclave = Conclave.new(
      apprentice: @apprentice,
      professor: availability.professor,
      location: params[:conclave][:location],
      date: availability.date,
      begin_time: availability.begin_time,
      finish_time: availability.finish_time,
    )
    if @conclave.save
      availability.destroy
      redirect_to @apprentice
    else
      @subject = availability.professor.subject
      locations
      render :new
    end
  end

  private

  def conclave_params
    params.require(:conclave).permit(:location)
  end

  def locations
    @locations = ["Solarium", "Grand Grimoire Library", "West Dungeons", "Hallowed Tree", "Fauna Wing", "Thaumaturgy Labs", "Herbology Dome", "Skiliworg Fields"]
  end

  def init_conclave
    @conclave = Conclave.new
  end
end
