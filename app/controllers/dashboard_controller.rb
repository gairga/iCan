class DashboardController < ApplicationController
  def index
  end
   skip_before_action :authenticate_user!, :only => [:index]
end
