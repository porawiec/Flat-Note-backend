Rails.application.routes.draw do
  resources :notes_tags
  resources :tags
  resources :notes
  resources :users, only: [:create]

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
