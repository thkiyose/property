Rails.application.routes.draw do
  resources :props, only: [:index, :new, :create,:show,:edit,:update]
  root to: "props#index"
end
