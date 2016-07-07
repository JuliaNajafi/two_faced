Rails.application.routes.draw do
  devise_for :users

  root to: 'issues#index'

  resources :issues do
    resources :headlines
  end

  resources :issues do
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end

  get '/profile', to: "users#show"


end
