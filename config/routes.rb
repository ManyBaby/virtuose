Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  resources :type_of_services
  resources :interpreters_skills
  resources :skills
  resources :places
  resources :requests
  resources :admins
  resources :interpreters
  resources :offers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
