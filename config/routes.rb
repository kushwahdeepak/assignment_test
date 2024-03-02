Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  get 'admin_dashboard', to: "pages#admin_dashboard"
  get 'student_dashboard', to: "pages#student_dashboard"
  get 'instructor_dashboard', to: "pages#instructor_dashboard"
  resources :courses do 
    post :buy_course, as: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
