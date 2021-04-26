Rails.application.routes.draw do
  resources :paintings
  devise_for :users, :controller => {registrations: 'registrations' }
  root"paintings#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
