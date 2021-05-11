Rails.application.routes.draw do
  get 'chat/show'
  root 'homes#top'
  get 'home/about' => 'homes#about'


  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
  }
  get "search" => "searches#search"

  resources :users,only: [:show,:index,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get "followings" => "relationships#followings", as: "followings"
    get "followers" => "relationships#followers", as: "followers"
  end


  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  get "chat/:id" => "chats#show", as: "chat"
  resources :chats, only: [:create]

end