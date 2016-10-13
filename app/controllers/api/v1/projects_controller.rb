class API::V1::ProjectsController < ApplicationController

  skip_authorization_check
  def index
    @projects = Project.all
    respond_to do |format|
      format.json { render :json => @projects }
    end
  end
    respond_to :json
    def show
      respond_with Project.find(params[:id])
     end
  

end
# module API
#   class ProjectsController < ApplicationController
#     def index
#      @projects = Project.accessible_by(current_ability).order('created_at DESC')
#      respond_to do |format|
#        format.json { render :json => @@projects }
#      end

#     respond_to :json

#     def show
#       respond_with Projects.find(params[:id])
#     end
#   end  
# end  

# class API::V1::ProjectsController < ApplicationController

#   def index
#     @people = Project.all
#     respond_to do |format|
#       format.json { render :json => @people }
#     end
#   end
# end

