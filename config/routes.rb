Rails.application.routes.draw do
  devise_for :users
  resources :options
  resources :answers
  resources :questions
    get "students/thankyou"

  resources :students

  root "students#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
