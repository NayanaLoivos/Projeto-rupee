Rails.application.routes.draw do
  get 'sessions/new'
  root 'projects#index' #raiz da rota

  resources :projects

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  #controller_name projects#action_index
end
