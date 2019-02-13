Rails.application.routes.draw do
  resources :user_sessions, only: [:new, :create]
  get "/logout" => "user_sessions#destroy", as: :logout
end
