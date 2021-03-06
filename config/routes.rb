Rails.application.routes.draw do
  #castings routes
  get '/castings', to: 'castings#index', as: 'castings'
  get '/castings/new', to: 'castings#new'
  post '/castings', to: 'castings#create'
  get '/castings/:id', to: 'castings#show', as: 'casting'
  get '/castings/:id/edit', to: 'castings#edit', as: 'edit_casting'
  patch '/castings/:id', to: 'castings#update'
  delete '/castings/:id', to: 'castings#destroy'


  ## House Routes
  get "/houses", to: "houses#index", as: "houses"
  get "/houses/:id", to: "houses#show", as: "house"

  ## User Routes
  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: 'signup'
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  ## Patronu Routes
  get "/patronus", to: "patronus#index", as: "patronus"
  get "/patronus/new", to: "patronus#new"
  post "/patronus", to: "patronus#create"
  get "/patronus/:id", to: "patronus#show", as: "patronu"
  get "/patronus/:id/edit", to: "patronus#edit"
  patch "/patronus/:id", to: "patronus#update"
  delete "/patronus/:id", to: "patronus#destroy"

 ## Wand Routes
 get "/wands", to: "wands#index", as: "wands"
 get "/wands/new", to: "wands#new"
 post "/wands", to: "wands#create"
 get "/wands/:id", to: "wands#show", as: "wand"
 get "/wands/:id/edit", to: "wands#edit"
 patch "/wands/:id", to: "wands#update"
 delete "/wands/:id", to: "wands#destroy"

 ## Spell Routes
 get "/spells", to: "spells#index", as: "spells"
 get "/spells/new", to: "spells#new"
 post "/spells", to: "spells#create"
 get "/spells/:id", to: "spells#show", as: "spell"
 get "/spells/:id/edit", to: "spells#edit"
 patch "/spells/:id", to: "spells#update"
 delete "/spells/:id", to: "spells#destroy"


 #sessions routes
 get '/login', to: 'sessions#new', as: 'login'
 post '/sessions', to: 'sessions#create'
 delete '/logout', to: 'sessions#destroy'

end
