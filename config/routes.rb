Rails.application.routes.draw do
  root 'favorites#index'
  resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
