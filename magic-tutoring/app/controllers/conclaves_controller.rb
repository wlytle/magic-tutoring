class ConclavesController < ApplicationController
  before_action :get_conclave, only: [:show, :edit, :update, :destroy]

  def new
    @subject = Subject.find(params[:id])
    @apprentice = current_user
    locations
    init_conclave
  end

  def create
    @apprentice = current_user
    availability = ProfessorAvailability.find(params[:availability])
    # Make a new conclave at the time corresponding to the profs avaialability
    @conclave = Conclave.new(
      apprentice: @apprentice,
      professor: availability.professor,
      location: params[:conclave][:location],
      date: availability.date,
      begin_time: availability.begin_time,
      finish_time: availability.finish_time,
    )
    if @conclave.save
      #remove availability to make sure prof isn't double booked
      availability.destroy
      redirect_to @apprentice
    else
      @subject = availability.professor.subject
      locations
      render :new
    end
  end

  def edit
  end

  def update
    if @conclave.update(params.require(:conclave).permit(:feedback))
      redirect_to @conclave.professor
    else
      render :edit
    end
  end

  def destroy
    #Reinstate prof availability after conclave has been destroyed.
    ProfessorAvailability.create(
      date: @conclave.date,
      begin_time: @conclave.begin_time,
      finish_time: @conclave.finish_time,
      professor: @conclave.professor,
    )
    @conclave.destroy
    redirect_to current_user
  end

  private

  def locations
    @locations = ["Solarium", "Grand Grimoire Library", "West Dungeons", "Hallowed Tree", "Fauna Wing", "Thaumaturgy Labs", "Herbology Dome", "Skiliworg Fields"]
  end

  def get_conclave
    @conclave = Conclave.find(params[:id])
  end

  def init_conclave
    @conclave = Conclave.new
  end
end
