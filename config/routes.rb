Rails.application.routes.draw do
  root 'welcome#welcome'

  devise_for :users, controller: {registrations: "registrations"}
  
  get 'dashboard' => 'dashboard#dashboard'

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
