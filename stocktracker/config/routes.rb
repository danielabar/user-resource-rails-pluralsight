Rails.application.routes.draw do
  resources :crypto_prices
  resources :cryptocurrencies

  root 'cryptocurrencies#index'
end
