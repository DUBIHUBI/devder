Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, path: 'profiles' do
    resources :meetings, only: [:create]
  end

  resources :meetings, only: [:show]

  get :my_profile, to: "users#my_profile"  
end
