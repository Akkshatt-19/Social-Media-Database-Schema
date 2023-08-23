Rails.application.routes.draw do
  resources :blocks
  resources :follows
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  
  resources :users do
    resources :posts,only:[:create,:update,:show,:destroy]
  end
  
  resources :users do
    resources :posts do
      resources :comments,only:[:index,:create], shallow: true
    end 
  end
  
  resources :posts do
    resources :comments,only:[:index,:create]
  end
  
  # Defines the root path route ("/")
  # root "articles#index"
end
