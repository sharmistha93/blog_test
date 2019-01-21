Rails.application.routes.draw do
  resources :posts
  resources :molecules
  resources :sketchtrainings
  resources :techniques

  root 'molecules#index'

end
