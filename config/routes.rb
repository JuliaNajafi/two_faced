Rails.application.routes.draw do
  root to: 'issues#index'
  resources :issues do
    resources :headlines
  end
end
