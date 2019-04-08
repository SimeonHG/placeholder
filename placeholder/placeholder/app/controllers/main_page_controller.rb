class MainPageController < ApplicationController
	def index

	end

	def user_panel
		@project = Project.new
		@team = Team.new
	end
end
