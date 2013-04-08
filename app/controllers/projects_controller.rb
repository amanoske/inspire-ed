class ProjectsController < ApplicationController

	def index

	end

	def new
		@project = Project.new

	end

	def create

	end

	def show
		@project = Program.find(params[:id])

	end

end