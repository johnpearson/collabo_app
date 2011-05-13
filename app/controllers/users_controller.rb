class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  # The home page is the redirect page after a successful login
  def home
    @title = "Home Base"
  end
  
  # The show page will show the user profile and show links to any projects that 
  # might be associated with the user
  def show
    @user = User.find(params[:id])
    @project = Project.new
    @projects = @user.projects
    @title = @user.email
  end
end