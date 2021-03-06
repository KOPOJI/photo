Photo::Application.routes.draw do

  resources :albums, path: '/gallery/'

  resources :images, path: '/gallery/:album/image', constraints: {album: /[-_a-z\d]+/i}, only: [:new, :create, :delete]
  delete '/gallery/:album/:id', to: 'images#destroy', constraints: {album: /[-_a-z\d]+/i}
  #resources :images

  root 'site#index'

  get 'users', to: 'users#index'
  get 'user/:id', to: 'users#show', constraints: {id:/\d+/}
  match 'user/profile', to: 'users#profile', as: 'profile', via: [:get, :patch]
  mount RailsAdmin::Engine => '/administration(.:format)', as: 'rails_admin'

  get '/:action', to: 'site#:action', constraints: {action: /blog|gallery|contact/}
  get '/gallery/:album', to: 'site#gallery', constraints: {album: /[-_a-z\d]+/i}


  devise_for :users, path: 'user', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'register',
      password: 'secret',
      confirmation: 'verification',
      unlock: 'unblock',
      registration: ''
  }
end
