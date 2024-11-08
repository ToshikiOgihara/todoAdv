class TasksController < ApplicationController
  def index
    #@articles = Article.order(id: :desc).page(params[:page]).per(3)
    @tasks = Task.order(id: :asc)
  end
  
  def new
    if params[:button]
      render :_new_button
    else
      @task = Task.new
    end
  end
  
  def create
    @task = Task.new(task_params)
    
    if @task.save
      render :create
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
    def task_params
      params.require(:task).permit(:title)
    end
end
