class ProjectsController < ApplicationController
  def new
    # form where a user can fill out their own profile.
    @user = User.find( params[:user_id] )
    @projects = @user.projects.build
  end
  def create 
    @user = User.find( params[:user_id] )
    @projects = @user.projects.build(project_params)
    if @projects.save
      flash[:success] = "Project Updated!"
      redirect_to user_path( params[:user_id] )
    else
      render action: :new
    end
  end
  
  def index
    @projects = Project.all
    @users = User.all
  end
  
  def show
    @project = Project.find( params[:id] )
  end
  
  private
    def project_params
      params.require(:project).permit(:street_name, :house_number, :postalcode, :price, :daysofwork, :description)
    end
end