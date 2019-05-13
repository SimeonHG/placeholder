class TasksController < ApplicationController

	before_action :set_project

	def index
    	@tasks = @project.tasks
  	end

  	def show
  		@task = Task.find(params[:id])
  	end

	def create
		@task = Task.new(:project_id => params[:project_id])
		@task = @project.tasks.create(task_params)
		redirect_to @project
		@project.tasks << @task
	end

	def edit

	end
	
	private

		def set_project
			@project = Project.find(params[:project_id])

		end

		def task_params
			params[:task].permit(:name, :description, :priority, :state, :deadline)
		end
	
end
