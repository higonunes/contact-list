Rails.application.routes.draw do

  resources :contatos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index'

  get 'sobre', to: 'static_pages#sobre'
  get 'sac', to: 'static_pages#sac'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'
  get 'sessions/new'

  resources :users, only:[:new, :create, :show]
end
