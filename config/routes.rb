Rails.application.routes.draw do
  resources :posts
  resources :molecules
  resources :sketchtrainings

  root 'molecules#index'
  
end
