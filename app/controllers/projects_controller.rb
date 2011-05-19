class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  
  # The new action takes in new project data from the form in the view
  def new
    @project = Project.new
  end
  
  # The create action creates a new project through the current user
  def create
    @project = current_user.projects.build(params[:project])
    if @project.save
      flash[:notice] = "Project Created!"
      redirect_to projects_path
    else
      render root_path
    end
  end
  
  # The index action shows all the projects created by all users
  def index
    @projects = Project.all
    @title = "Projects"
  end
  
  # The edit action allows users to edit their projects by adding files or changing 
  # content or the name
  def edit
    @project = Project.find(params[:id])
  end
  
  # The update action updates the current project in the database
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project Updated!"
      redirect_to projects_path
    else
      render root_path
    end
  end
end