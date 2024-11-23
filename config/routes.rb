Rails.application.routes.draw do
  # Specifies admin panel route as "rails_admin"
  mount RailsAdmin::Engine => '/adminpanel', as: 'rails_admin'
  # Used to tell devise that the confirmations, sessions, registrations, and passwords controllers are being overwritten
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    sessions: 'users/sessions', 
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  resources :presentations do
    resources :feedbacks
  end
  get 'hi', to: 'presentations#feedback'
  resources :teams
  resources :feedbacks
  resources :users
  get 'home/index'
  root to: "home#index"
  
  get '/admin' => "admin#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
