Rails.application.routes.draw do
  resources :props, only: [:index]
  root to: "props#index"
end
