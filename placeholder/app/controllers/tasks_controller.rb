class TasksController < ApplicationController

	before_action :set_project

	def index
    	@tasks = Task.all
  	end

  	def show
  		@tast = Task.find(parans[:id])

	def create
		@project = Project.new(project)
	    @project.tasks << current_task 
	    @project.save
		@task = @project.tasks.create(task_params)
		redirect_to @project
	end



	private

	def set_project
		@project = Project.find(params[:project_id])
	end

	def task_params
		params[:task].permit(:name)
	end


end
