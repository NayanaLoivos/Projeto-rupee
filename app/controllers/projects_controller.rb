class ProjectsController < ApplicationController 
      # ...herda tudo de < ..........
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.all
  end
  def show    
  end  

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit             
  end

  def update    
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit  
    end  
  end

  def destroy
    @project.destroy

    redirect_to root_path, status: :see_other
  end 

  private
  def project_params 
    params.require(:project).permit(:titulo, :descricao, :duracao)
  end  

  def set_project
    @project = Project.find(params[:id])
  end
end
