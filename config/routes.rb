Rails.application.routes.draw do
  resources :sings
  resources :singins
  resources :logins
  resources :guides
  get 'welcome/index'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
