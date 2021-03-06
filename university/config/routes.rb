Rails.application.routes.draw do


  devise_for :users
  get "courses/index"
  get "sections/index"
  get "courses/index"
  get "enrollments/index"


  resources :enrollments do
    collection do
      get 'search'
    end
  end

  resources :courses do
    collection do
      get 'search'
    end
  end

  resources :sections do
    collection do
      get 'search'
    end
  end

  resources :students do
    collection do
      get 'search'
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
