Rails.application.routes.draw do
#  get 'projects/index'

 # get 'projects/edit'

  #get 'projects/new'

  #get 'projects/_form'

  devise_for :users
  resources :sessions, only: [:update]
  resources :projects

#  get 'project/index'
 # get 'home/index'
 # get 'dashboard/index'
 # get 'sessions/index'
 # get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  
end
