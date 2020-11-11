class ApprenticeSubjectsController < ApplicationController
  def create
    @apprentice = current_user
    @subject = Subject.find(params[:format])
    @appsub = ApprenticeSubject.new(subject: @subject, apprentice: @apprentice)
    if @appsub.save
      redirect_to apprentice_path(@apprentice)
    else
      flash[:danger] = "You are already signup for this subject"
      redirect_to @subject
    end
  end

  def delete
    # delete the ApprenticeSubject
    redirect_to # back to the apprentice
  end
end
