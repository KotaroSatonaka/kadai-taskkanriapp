Rails.application.routes.draw do
  get 'toppages/index'

  root to: 'toppages#index'
  root to: 'task_lists#index'
  
  resources :task_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
