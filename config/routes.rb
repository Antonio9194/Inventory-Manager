Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items do
    resources :stock_movements, only: [ :create ]
    member do
      get :confirm_delete
    end
  end
end
