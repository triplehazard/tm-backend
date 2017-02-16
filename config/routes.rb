Rails.application.routes.draw do
  resources :regular_tasks
  resources :fixed_tasks
  resources :time_terms
  resources :tasks
  resources :locations
  resources :calendars
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
