Rails.application.routes.draw do
  devise_for :users
  resources :user
  resources :categories do
    resources :budgets
  end
  
  root 'users#splash'
end
