class PersonProjectsController < ApplicationController
    
    def new
        @person = params[:person_id]
        @person_project = PersonProject.new
        @project_for_select = Project.pluck(:name, :id)
    end

    def create
        @person = PersonProject.find_or_initialize_by(
        person_id: params[:person_id],
        project_id: params[:person_project][:project_id]
        )
        if @person.save
            redirect_to root_path, notice: 'Trabajador Agregado!'
        else 
            redirect_to root_path, alert: 'Trabajador ya asignado'
        end
    end

    def destroy 

        @person_project = PersonProject.find(params[:id])
        @person_project.destroy

        redirect_to root_path, notice: 'Se ha eliminado el proyecto asignado!'
    end
end
