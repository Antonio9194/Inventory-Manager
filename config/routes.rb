Rails.application.routes.draw do
  root "items#index"
  resources :items, only: [ :index, :show, :new, :create ]
  resources :items do
    resources :stock_movements, only: [ :create ]
  end
end
