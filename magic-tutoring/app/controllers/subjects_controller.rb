class SubjectsController < ApplicationController

    before_action :find_subject, only: [:show, :edit, :update]
    skip_before_action :authorized, only: :index

    def index 
        @subjects = Subject.all
    end
    
    def update
        if @subject.update(subject_params)
            redirect_to @subject
        else
            @subjects = Subject.all
            render :edit
        end
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
