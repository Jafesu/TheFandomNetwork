Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  root 'home#index'

  get 'signup' => 'users#new'
 

    get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
	
  delete 'logout' => 'sessions#destroy'

  get 'users/show/:first_name' => 'users#show'
  get 'users/show' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
