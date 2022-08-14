Rails.application.routes.draw do
  root 'projects#index' #raiz da rota

  resources :projects
  resources :users
  #controller_name projects#action_index
end
