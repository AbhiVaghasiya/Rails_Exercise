Rails.application.routes.draw do
  resources :standards_teachers
  resources :teachers
  resources :standards
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
