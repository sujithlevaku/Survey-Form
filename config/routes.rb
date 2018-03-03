Rails.application.routes.draw do
  resources :options
  resources :answers
  resources :questions
  resources :students
  root "students#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
