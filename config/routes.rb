Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :category do
    resources :task
  end  
  post 'category/create' => 'category#create', as: 'create_category'
  get 'category/:id' => 'category#show', as: 'show_category'
  patch 'category/:id', to: 'category#update'

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
