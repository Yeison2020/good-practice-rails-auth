Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
post '/login', to: 'sessions#create'
delete '/logout', to:'sessions#destroy'




get '/recipes', to: 'recipes#index'
post '/recipes', to: 'recipes#create'
    # User controller for Sign Up No using Restful convention for now. 
    get '/users', to: 'users#index'
    post '/signup', to: 'users#create'
    get '/me', to: 'users#show'
end
