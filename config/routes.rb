QuizApplication::Application.routes.draw do

  # The priority is based upon order of creation:
  # first created -> highest priority.

  root :to => "home#index"

  resources :players
  resources :teams
  resources :quizzes
  resources :sessions, only: [:new, :create, :destroy]

  match '/login',  to: 'sessions#new'
  match '/logout', to: 'sessions#destroy', via: :delete

  match '/signup', to: 'teams#new'

  match '/teams/:teamId/owner/new', to: 'players#new', as: :signup_step2

end
