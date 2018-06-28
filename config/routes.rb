Rails.application.routes.draw do
  resources :posts
  resources :molecules

  root 'molecules#index'
  
end
