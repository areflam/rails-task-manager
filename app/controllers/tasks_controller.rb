class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasking_path(@task)
  end
# je le redirige sur une page dédié / Le nom de la page est nommé à partir du fichie routes
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasking_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to global_path
  end
  private

  def task_params
    params.require(:task).permit(:title, :details)
end
# initialement, les valeurs mises dans le formulaire ne sont pas acceptés
# il faut les autoriser avec un méthode task_params
end
