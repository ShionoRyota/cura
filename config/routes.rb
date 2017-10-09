Rails.application.routes.draw do

  # devise_for :personals
  # devise_for :workers

  devise_for :workers, controllers: {
  sessions:      'workers/sessions',
  passwords:     'workers/passwords',
  registrations: 'workers/registrations'
}
devise_for :personals, controllers: {
  sessions:      'personals/sessions',
  passwords:     'personals/passwords',
  registrations: 'personals/registrations'
}

  resources :helpers do
    resources :users
  end
  resources :workers
  resources :personals
  root 'homes#top'
  get 'homes/top'
end
