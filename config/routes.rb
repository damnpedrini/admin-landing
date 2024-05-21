Rails.application.routes.draw do
  namespace :admin do
    resources :photos
    root to: "dashboard#index"
  end

  resources :photos

  root to: 'photos#index'
end
