class ThemesController < ApplicationController

  def index
		@themes = Theme.where(project_id: params[:project_id])
	end

	def new
		@theme = Theme.new
		@path_to_save = create_theme_path(params[:project_id])
	end

	def show
		@theme = Theme.find(params[:id])
	end

  def create
  	@project = Project.find(params[:project_id])
		@theme = Theme.new(params[:theme])
    @theme.project_id = @project.id
    # verificar essa parte
    if @theme.save
  		redirect_to themes_path(@project.id)
  	else
  		@path_to_save = create_theme_path(@project.id)
  		render :new
  	end
  end

	def edit
		@theme = Theme.find(params[:id])
		@path_to_save = update_theme_path(params[:id])

	end

	def update
		@theme = Theme.find(params[:id])
		if @theme.update_attributes(params[:theme])
			redirect_to themes_path(@theme.project_id)
		else
			@path_to_save = update_theme_path(params[:id])
			render :edit
			end

	end

	def destroy
		theme = Theme.find(params[:id])
		theme.destroy
	rescue
	ensure
		redirect_to themes_path(theme.project_id)
	end

end
