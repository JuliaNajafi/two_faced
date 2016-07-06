Rails.application.routes.draw do
  devise_for :users
  root to: 'issues#index'

  resources :issues do
    resources :headlines
  end
end
