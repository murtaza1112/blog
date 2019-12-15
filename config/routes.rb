Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/update'
  get 'posts/create'
  get 'posts/new'
  get 'posts/destroy'
  get 'posts/edit'
  get 'posts/show'
  resources :posts
  resources :categories
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
