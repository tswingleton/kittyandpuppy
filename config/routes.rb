Rails.application.routes.draw do
  resources :memories
  resources :cooked_meals
  resources :resturants
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
