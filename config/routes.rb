Rails.application.routes.draw do

root 'families#index'

resources :families do
  resources :members
end

resources :members do
  resources :tasks
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
