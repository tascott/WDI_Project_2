Rails.application.routes.draw do
 

  resources :comments
  devise_for :users

  root 'statics#homepage'
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'

  # get 'events/:id/comments/new', to: 'comments#new', :as => "new_comment_with_event"

  resources :events
  
end
