Rails.application.routes.draw do
  resources :posts do
    member do
      get :upvote
      get :downvote
    end
  end
  devise_for :users
  root 'posts#index'
end
