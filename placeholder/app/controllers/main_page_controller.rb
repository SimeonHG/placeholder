class MainPageController < ApplicationController
	def index

	end

	def user_project_team
		@project = Project.new
		@team = Team.new
	end
end
