Rails.application.routes.draw do
  devise_for :personals
  devise_for :workers

  resources :helpers
  resources :users
  root 'homes#top'
  get 'homes/top'
end
