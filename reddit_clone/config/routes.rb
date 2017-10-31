Rails.application.routes.draw do
  get 'subs/new'

  get 'subs/create'

  get 'subs/edit'

  get 'subs/update'

  get 'subs/index'

  get 'subs/show'

  resources :users, only: [:new, :create]
  resources :subs, except: [:destroy]
  resource :session, only: [:new, :create, :destroy]
end
