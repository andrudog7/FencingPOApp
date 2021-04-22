Rails.application.routes.draw do
  resources :price_cards
  resources :items
  resources :types
  resources :line_items
  resources :salesmen
  resources :purchase_orders
  resources :customers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
