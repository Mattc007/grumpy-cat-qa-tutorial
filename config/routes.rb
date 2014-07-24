GrumpyCatQaTutorial::Application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :sightings, only: [:show, :new, :create, :index]

  get '/home', to: redirect('/')
  get '/profile', to: 'users#show', id: '14'

  root to: 'high_voltage/pages#show', id: 'home'
end
