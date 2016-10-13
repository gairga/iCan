Rails.application.routes.draw do
  #Como queremos que nuestras respuestas sean en JSON , también lo hará establecer el 
  #formato por defecto de esta api
  #a JSON. Cambiar el código de seguridad .
#  namespace :api, defaults:{ format: :json }do

#amespace :api, :path => "/", :constraints => {:subdomain => "api"} do
#namespace :api,  :path => "/", :constraints => {:subdomain => "api"}, :defaults => {:format => :json} do
	#namespace :api, :path => "/", :constraints => {:subdomain => "api"} do
	#API Definition
	namespace :api, path: '/', defaults: { format: 'json' } do
		namespace :v1 do
			resources :projects
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
