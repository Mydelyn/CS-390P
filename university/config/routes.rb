Rails.application.routes.draw do

  get "courses/index"
  get "sections/index"
  get "courses/index"
  get "enrollments/index"

  resources :enrollments
  resources :students
  resources :courses
  resources :sections

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
