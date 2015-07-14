Rails.application.routes.draw do
  root 'yoyos#index'
  get 'yoyos'=> 'yoyos#index'
  post 'yoyos'=>'yoyos#create'
  get 'yoyos/new'=> 'yoyos#new'
  get '/yoyos/:id', to: 'yoyos#show', as: "yoyo"
  put 'yoyos/:id', to: 'yoyos#update'
  patch 'yoyos/:id', to: 'yoyos#update'
  get 'yoyos/:id/edit', to: 'yoyos#edit'
end
