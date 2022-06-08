Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, path: 'profiles' do
    resources :meetings, only: [:new, :create]
    post "meetings/:id/accept", to: 'meetings#accept'
  end

  # resources :meetings, only: [:show]

  get :my_profile, to: "users#my_profile" do
    resources :meetings, only: [:show]
  end
end
