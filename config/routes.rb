Rails.application.routes.draw do
  root 'welcome#index'
  resources :welcome
  resources :trainers
  resources :owners
  resources :dog_breeds
  resources :breeds
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
