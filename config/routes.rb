Rails.application.routes.draw do
  root 'projects#index' #raiz da rota

  resources :projects
#controller_name projects#action_index
end
