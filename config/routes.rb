Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts
  resources :comments
  resources :answers
  resources :post_upvotes
  resources :post_downvotes
  resources :comment_upvotes
  resources :answer_upvotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
