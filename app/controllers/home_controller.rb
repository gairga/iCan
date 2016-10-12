class HomeController < ApplicationController
  def index
  end
    #skip_before_action :authenticate_user!, :only => [:index]
  skip_authorization_check
  
  def update
    id = params[:id].to_i
    session[:id] = User::ROLES.has_key?(id) ? id : 0
    flash[:success] = "Your new role #{User::ROLES[id]} was set!"
    redirect_to root_path
  end
end
