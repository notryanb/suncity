Rails.application.routes.draw do
  root "maintenance_requests#index"
  resources :maintenance_requests
  resources :request_statuses
  resources :request_categories
  resources :user_sessions, only: [:new, :create]
  get "/logout" => "user_sessions#destroy", as: :logout
end
