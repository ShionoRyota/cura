Rails.application.routes.draw do
  devise_for :personals
  devise_for :workers

  resources :helpers
  root 'homes#top'
  get 'homes/top'
end
