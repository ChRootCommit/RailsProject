Rails.application.routes.draw do
  get 'utilisateurs/new'

  root 'statique#accueil'

  get '/contact', to: "statique#contact"

  get '/service', to: "statique#service"
  
  get '/team', to: "statique#team"

  get '/signup', to:"utilisateurs#new" 
  resources :utilisateurs

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
