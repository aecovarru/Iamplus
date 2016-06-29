Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/spotify/callback', to: 'user#spotify'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user#index'
end
