Rails.application.routes.draw do
  resources :jerries
  get 'pages/info'
root to: redirect('/jerries')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
