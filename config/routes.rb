Rails.application.routes.draw do
  #index : Que devuelve una lista de recursos y es una solicitud GET del estilo /users
  #create : Que crea un nuevo recurso de los datos de solicitud 
  #show => Devuelve los contenidos de los recursos que se han identificado en params[:id] y es una  solicitud GET del estilo /users/:id
  #Update actualiza los contenidos del recurso identificado params[:id] con los datos asociados a la solicitud y es una solicitud  PUT del estilo /users/:id
  #Edit devuelve los contenidos del recurso identificado params[:id] en un formato adecuado para la edición y es una solicitud  GET del estilo /users/:id/edit
  #Destroy que destruye un recurso identificado params[:id] y es una solicitud DELETE del estilo /users/:id

#amespace :api, :path => "/", :constraints => {:subdomain => "api"} do
#namespace :api,  :path => "/", :constraints => {:subdomain => "api"}, :defaults => {:format => :json} do
	#namespace :api, :path => "/", :constraints => {:subdomain => "api"} do
	#API Definition
	namespace :api, path: '/', defaults: { format: 'json' } do
		namespace :v1 do		
			resources :projects, :only => [:show, :index]
		end
	end	

	devise_for :users
	resources :sessions, only: [:update]
    resources :projects

  #get 'projects/index'
 # get 'home/index'
 # get 'dashboard/index'
 # get 'sessions/index'
 # get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  
end
