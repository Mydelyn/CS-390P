Rails.application.routes.draw do

  resources :enrollments
  resources :students
  resources :courses
  resources :sections

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
