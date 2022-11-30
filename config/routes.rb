Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :category do
    resources :task
  end
  resources :user
  

  # Defines the root path route ("/")
  root "category#index"
end
