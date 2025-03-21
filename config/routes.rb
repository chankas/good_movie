Rails.application.routes.draw do

  namespace :authentications, path: '', as: '' do
    resources :users, only: %i[new create], path: 'signup', path_names: { new: '/' }
    resources :sessions, only: %i[new create destroy], path: 'login', path_names: { new: '/' }
  end

  resources :favorites, only: %i[index create destroy], param: :movie_id
  resources :categories
  resources :users, only: :show, path: '/user', param: :username
  resources :movies, path: '/'

end
