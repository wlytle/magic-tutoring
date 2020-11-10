class ConclavesController < ApplicationController
  def show
    @conclave = Conclave.find(params[:id])
  end

  def new
    @subject = Subject.find(params[:id])
    @apprentice = current_user
    locations
    @conclave = Conclave.new
  end

  def create
    @apprentice = current_user
    @apprentice.conclaves.build(conclave_params)
    if @apprentice.save
      redirect_to @apprentice
    else
      render :new
    end
  end

  private

  def conclave_params
    params.require(:conclave).permit(:apprentice_id, :professor_id, :location)
  end

  def locations
    @locations = ["Solarium", "West Dungeons", "Hallowed Tree", "Fauna Wing", "Thaumaturgy Labs", "Herbology Dome", "Skiliworg Fields"]
  end
end
