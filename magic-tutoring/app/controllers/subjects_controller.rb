class SubjectsController < ApplicationController
  before_action :find_subject, only: :show
  skip_before_action :authorized, only: [:index, :show]

  def index
    @subjects = Subject.all
  end

  def show
  end

  private

  def find_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
