Rails.application.routes.draw do
  resources :props, only: [:index, :new, :create]
  root to: "props#index"
end
