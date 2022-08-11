Rails.application.routes.draw do
  root 'projects#index' #raiz da rota
  get '/projects', to: 'projects#index'
#controller_name projects#action_index
end
