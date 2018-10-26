Rails.application.routes.draw do
  root to: 'task2s#index'
  
  resources :task2s
end
