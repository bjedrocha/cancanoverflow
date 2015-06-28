Cancanoverflow::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Session routes
  get 'login', :to => 'sessions#new', :as => :login
  get 'logout', :to => 'sessions#destroy', :as => :logout
  resources :sessions, :only => [:create]

  resources :posts, only: [:index, :show]
  root :to => 'posts#index'
end
