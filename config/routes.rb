Rails.application.routes.draw do
  resources :props, only: [:index, :new, :create,:show]
  root to: "props#index"
end
