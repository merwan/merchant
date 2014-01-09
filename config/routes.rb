Merchant::Application.routes.draw do
  resources :orders

  resources :order_items

  resources :products

  match '/auth/:provider/callback', to: 'sessions#create', via: :get
end
