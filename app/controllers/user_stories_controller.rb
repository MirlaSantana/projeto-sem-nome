class UserStoriesController < ApplicationController
  #index, new, create => (project_id)
  # get '/userstories/home/project/:project_id' => 'controlador#index', as: 'nome'
  def index
		@user_stories = User_Stories.where(theme_id: params[:theme_id])
	end

	def new
		@user_stories = User_Stories.new
		@path_to_save = create_user_stories_path(params[:theme_id])
	end

	def show
		@user_stories = User_Stories.find(params[:id])
	end

  def create
  	@theme = Theme.find(params[:theme_id])
	@user_stories = User_Stories.new(params[:user_stories])
    @user_stories.theme_id = @theme.id
    # verificar essa parte
    if @user_stories.save
  		redirect_to user_stories_path(@theme.id)
  	else
  		@path_to_save = create_user_stories_path(@theme.id)
  		render :new
  	end
  end

	def edit
		@user_stories = User_Stories.find(params[:id])
		@path_to_save = update_user_stories_path(params[:id])

	end

	def update
		@user_stories = User_Stories.find(params[:id])
		if @user_stories.update_attributes(params[:user_stories])
			redirect_to user_stories_path(@user_stories.theme_id)
		else
			@path_to_save = update_user_stories_path(params[:id])
			render :edit
			end

	end

	def destroy
		user_stories = User_Stories.find(params[:id])
		user_stories.destroy
	rescue
	ensure
		redirect_to user_stories_path(user_stories.theme_id)
	end


end
