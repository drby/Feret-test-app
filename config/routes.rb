Rails.application.routes.draw do
  root 'pages#home'
  resources :wines, only: [ :index, :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
