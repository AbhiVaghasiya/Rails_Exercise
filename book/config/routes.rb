Rails.application.routes.draw do
  resources :publishers
  resources :authors
  resources :book_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
