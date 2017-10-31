Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :subs, except: [:destroy] do
    resources :posts, except: [:index]
  end
  resource :session, only: [:new, :create, :destroy]
end
