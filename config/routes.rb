Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'

  get 'pages/properties'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
