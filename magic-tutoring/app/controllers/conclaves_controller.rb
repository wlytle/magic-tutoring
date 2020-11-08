class ConclavesController < ApplicationController
  def new
    @subject = Subject.find(params[:subject_id])
  end
end
