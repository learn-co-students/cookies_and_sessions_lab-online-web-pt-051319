Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'application#homepage'
  post '/add', to: 'application#add'
  root 'application#homepage'
end
