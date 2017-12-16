Rails.application.routes.draw do
  get 'tasks/create'

  get 'tasks/destroy'

  root to: 'toppages#index'
  root to: 'task_lists#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :task_lists
  
  resources :tasks, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
