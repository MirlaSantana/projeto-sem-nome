ProjetoSemNome::Application.routes.draw do
  # get '/users' => 'users#index'

  #routes for the ability module
  get '/abilities' => 'abilities#index', as: 'abilities'
  get '/abilities/new' => 'abilities#new', as: 'new_ability'
  get '/abilities/edit/:id' => 'abilities#edit', as: 'edit_ability'
  get '/abilities/show/:id' => 'abilities#show', as: 'show_ability'
  post '/abilities/create' => 'abilities#create', as: 'create_ability'
  post '/abilities/update/:id' => 'abilities#update', as: 'update_ability'
  get '/abilities/destroy/:id' => 'abilities#destroy', as: 'destroy_ability'

  #routes for module_function

  get '/functions' => 'functions#index', as: 'functions'
  get '/functions/new' => 'functions#new', as: 'new_function'
  get '/functions/edit/:id' => 'functions#edit', as: 'edit_function'
  get '/functions/show/:id' => 'functions#show', as: 'show_function'
  post '/functions/create' => 'functions#create', as: 'create_function'
  post '/functions/update/:id' => 'functions#update', as: 'update_function'
  get '/functions/destroy/:id' => 'functions#destroy', as: 'destroy_function'

 #routes for module_languages
 get'/languages' => 'languages#index', as: 'languages'
 get '/language/new' => 'languages#new', as: 'new_language'
 post '/language/create' => 'languages#create', as: 'create_language'
 get '/language/edit/:id' => 'languages#edit', as: 'edit_language'
 get '/language/destroy/:id' => 'languages#destroy', as: 'destroy_language'
 get '/language/show/:id' => 'languages#show', as: 'show_language'
 post '/language/update/:id' => 'languages#update', as: 'update_language'

#routes for module_project
 get '/projects' => 'projects#index', as:'projects'
 get '/project/new' => 'projects#new', as: 'new_project'
 post '/project/create' => 'projects#create', as: 'create_project'
 get '/project/edit/:id' => 'projects#edit', as: 'edit_project'
 get '/project/destroy/:id' => 'projects#destroy', as:'destroy_project'
 get '/project/show/:id' => 'projects#show', as: 'show_project'
 post '/project/update/:id' => 'projects#update', as: 'update_project'

 #routes for module_local
 get'/places' => 'places#index', as: 'places'
 get '/local/new' => 'places#new', as: 'new_local'
 post'/local/create' => 'places#create', as: 'create_local'
 get'/local/edit/:id' => 'places#edit', as: 'edit_local'
 get'/local/destroy/:id' => 'places#destroy', as: 'destroy_local'
 get'/local/show/:id' => 'places#show', as: 'show_local'
 post'/local/update/:id' => 'places#update', as: 'update_local'

 #routes for module_theme
 get'/themes/home/project/:project_id' => 'themes#index', as: 'themes'
 get '/theme/new/project/:project_id' => 'themes#new', as: 'new_theme'
 post'/theme/create/project/:project_id' => 'themes#create', as: 'create_theme'
 get'/theme/edit/:id' => 'themes#edit', as: 'edit_theme'
 get'/theme/destroy/:id' => 'themes#destroy', as: 'destroy_theme'
 get'/theme/show/:id' => 'themes#show', as: 'show_theme'
 post'/theme/update/:id' => 'themes#update', as: 'update_theme'

 get'/user_stories/home/theme/:theme_id' => 'user_stories#index', as:'user_stories'
 get'/user_stories/new/theme/:theme_id' => 'user_stories#new', as:'new_user_stories'
 post'/user_stories/create/theme/:theme_id' => 'user_stories#create', as:'create_user_stories'
 get'/user_stories/edit/:id' => 'user_stories#edit', as:'edit_user_stories'
 get'/user_stories/destroy:id' => 'user_stories#destroy', as:'destroy_user_stories'
 get'/user_stories/show/:id' => 'user_stories#show', as:'show_user_stories'
 post'/user_stories/update/:id' => 'user_stories#update', as:'update_user_stories'



end
