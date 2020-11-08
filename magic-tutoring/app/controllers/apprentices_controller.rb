class ApprenticesController < ApplicationController
  before_action :find_apprentice, only: [:show, :edit, :update]

  def new
    @apprentice = Apprentice.new
  end

  def create
  end

  def update
    @apprentice.update(apprentice_params)
    redirect_to @apprentice
  end

  def delete
    @apprentice.destroy
    redirect_to "static#welcome"
  end

  private

  def find_apprentice
    @apprentice = Apprentice.find(params[:id])
  end

  def apprentice_params
    params.permit(:name, :username, :password_digest)
  end
end
