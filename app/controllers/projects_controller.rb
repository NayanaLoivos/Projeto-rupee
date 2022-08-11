class ProjectsController < ApplicationController 
      # ...herda tudo de < ..........
  def index
    @projects = Project.all
  end
end
