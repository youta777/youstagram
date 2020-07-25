Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }

  root 'posts#index'

  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/followings', to:'users#followings', as: 'followings_user'
  get '/users/:id/followers', to:'users#followers', as: 'followers_user'

  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy)
    resources :comments, only: %i(create destroy)
  end
  resources :relationships, only: %i(create destroy)
end
