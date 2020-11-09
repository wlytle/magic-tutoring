class ConclavesController < ApplicationController
  def show
    @conclave = Conclave.find(params[:id])
  end

  def new
    @subject = Subject.find(params[:subject_id])
  end
end
