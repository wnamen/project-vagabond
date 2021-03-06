Rails.application.routes.draw do

  root to: "site#index"

  get "/users", to: "users#index", as: 'users'
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"

  get '/login', to: 'sessions#new', as: 'new_session'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: 'sessions#create'

  get "cities/:city_id/posts", to: "posts#index", as: "posts"
  get "cities/:city_id/posts/new", to: "posts#new", as: "new_post"
  post "cities/:city_id/posts", to: "posts#create"
  get "cities/:city_id/posts/:id", to: "posts#show", as: "post"
  get "cities/:city_id/posts/:id/edit", to: "posts#edit", as: "edit_post"
  patch "cities/:city_id/posts/:id", to: "posts#update"
  delete "cities/:city_id/posts/:id", to: "posts#destroy"

  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/new', to: 'cities#new', as: 'new_city'
  post '/cities', to: 'cities#create'
  get '/cities/:id', to: 'cities#show', as: 'city'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
