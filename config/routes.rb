Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users, controller: {registrations: "users#registrations", confirmations: "confirmations"}
  default_url_options :host => 'static_pages#index'
  
  get 'dashboard' => 'dashboard#dashboard'
  
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
