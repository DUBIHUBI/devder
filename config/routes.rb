Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, path: 'profiles' do
    # collection do
    #   get :my_profile
    # end
  end

  get :my_profile, to: "users#my_profile"
  # Defines the root path route ("/")
  # root "articles#index"
end
