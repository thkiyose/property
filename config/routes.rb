Rails.application.routes.draw do
  resources :props, only: [:index, :new, :create,:show,:edit,:update, :destroy]
  root to: "props#index"
end
