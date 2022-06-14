Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, path: 'profiles' do
    resources :meetings, only: [:new, :create]
    resources :favourites, only: [:create]
    post "meetings/:id/accept", to: 'meetings#accept'
  end

  # resources :meetings, only: [:show]

  get :my_profile, to: "users#my_profile" do
    resources :meetings, only: [:show]
  end

  resources :favourites, only: [:index, :destroy]
end
