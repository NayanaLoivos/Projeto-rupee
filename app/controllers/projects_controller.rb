class ProjectsController < ApplicationController 
      # ...herda tudo de < ..........
  def index
    @projects = Project.all
  end
  def show
    @project = Project.find(params[:id])
  end  

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end
  
  private
  def project_params 
    params.require(:project).permit(:titulo, :descricao, :duracao)
  end  
end
