class ProfessorsController < ApplicationController
    before_action :find_professor, only: [:show, :destroy]

    def index
        @professors = Professor.all 
    end

    # def show
    # end

    def new
        @professor = Professor.new
    end

    def create
        @professor = Professor.new(professor_params)
        if @professor.save
            redirect_to professor_path(@professor)
        else
            render new_professor_path
        end
    end

    # def destroy 
    #     @professor.destroy
    #     redirect_to professors_path
    # end

    private

    def find_professor
        @professor = Professor.find(params[:id])
    end

    def professor_params
        params.require(:professor).permit(:name, :house, :subject_id, :availabilty, :username, :password)
    end

end
