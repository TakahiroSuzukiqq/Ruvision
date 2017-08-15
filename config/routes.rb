Rails.application.routes.draw do
  
  get 'admin/index'

  root 'pages#home'
  get 'hostdashboard', to: 'pages#host_dashboard'
  get 'guestdashboard', to: 'pages#guest_dashboard'
  get 'pages/properties'
  

  resources :bookings do
    member do
      resources :charges
    end
  end
 

  resources :charges
  resources :rooms
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
