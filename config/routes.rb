Rails.application.routes.draw do
  devise_for :personals
  devise_for :workers

  resources :helpers
  get 'homes/top'
end
