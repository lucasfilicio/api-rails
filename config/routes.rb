Rails.application.routes.draw do
  resources :transactions
  namespace :api, defaults: { format: :json } do
    resources :accounts
  end
  resources :accounts, only: [:create] do
    member do
      post :deposit
    end
  end
end
