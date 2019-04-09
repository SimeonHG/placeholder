class MainPageController < ApplicationController
	def index

	end

	def user_project
		@project = Project.new
		
	end

	def user_team
		@team = Team.new
	end
end
