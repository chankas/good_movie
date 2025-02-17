Rails.application.routes.draw do

  resources :movies
  resources :categories

  namespace :authentications, path: '', as: '' do
    resources :users, only: %i[new create]
  end
end
