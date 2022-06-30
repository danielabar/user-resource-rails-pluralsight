Rails.application.routes.draw do
  resources :crypto_prices
  resources :cryptocurrencies

  get "/companies", to: "companies#index"
  get "/companies/:id", to: "companies#show"

  root 'companies#index'
end
