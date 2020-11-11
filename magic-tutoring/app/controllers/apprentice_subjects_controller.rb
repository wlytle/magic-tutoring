class ApprenticeSubjectsController < ApplicationController
  def create
    @apprentice = current_user
    @subject = Subject.find(params[:format])
    @appsub = ApprenticeSubject.new(subject: @subject, apprentice: @apprentice)
    if @appsub.save
      redirect_to apprentice_path(@apprentice)
    else
      flash[:danger] = "You are already signed up for this subject"
      redirect_to @subject
    end
  end

  def destroy
    @as = ApprenticeSubject.find(params[:id])
    @as.destroy
    @apprentice = current_user
    redirect_to apprentice_path(@apprentice)
  end
end
