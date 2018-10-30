Rails.application.routes.draw do
  root to: 'tasks#index'
  # リクエストをどのコントローラで処理するかの道標
  resources :tasks
  
  # resources :posts
  # /posts       => posts#index
  # /posts/:id   => posts#show
  # /posts(POST) => posts#create
  # /posts/:id(DELETE) => posts#destroy
  # /posts/:id(PUT)    => posts#update
end
