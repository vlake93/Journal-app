Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :category do
    resources :task
  end  

  # Defines the root path route ("/")
  devise_for :users
    devise_scope :user do
  authenticated :user do
    root :to => 'home#index', as: :authenticated_root
  end
  unauthenticated :user do
    root :to => 'devise/sessions#new', as: :unauthenticated_root
  end
end
end
