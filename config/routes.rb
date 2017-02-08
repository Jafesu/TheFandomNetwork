Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  root 'home#index'

  get 'signup' => 'users#new'
 

    get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
	
  delete 'logout' => 'sessions#destroy'

  get 'users/show/:id' => 'users#show'
  get 'users/show' => root_path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
