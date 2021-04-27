Rails.application.routes.draw do
  get 'home/index'
  resources :paintings
  get 'paintings/buy'
  devise_for :users, :controllers => {registrations: 'registrations' }
  root"home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
