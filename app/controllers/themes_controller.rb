class ThemesController < ApplicationController

  def index
		@themes = Theme.where(project_id: params[:project_id])
	end

	def new
		@project = Project.new
		@path_to_save = create_project_path

	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
		@path_to_save = update_project_path(params[:id])

	end

	def create
		@project = Project.new(params[:project])
		if @project.save
			redirect_to projects_path
		else
			@path_to_save = create_project_path
			render :new
		end


	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(params[:project])
			redirect_to projects_path
		else
			@path_to_save = update_project_path(params[:id])
			render :edit
			end

	end

	def destroy
		project = Project.find(params[:id])
		project.destroy
	rescue
	ensure
		redirect_to projects_path
	end

end
