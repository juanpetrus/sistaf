Rails.application.routes.draw do
  root to: 'tarefas#index'
  resources :tarefas
  resources :responsavels
end
