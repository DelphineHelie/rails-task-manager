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
    raise
    # pq ne fonctionne pas avec les params ?
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # pq ne fonctionne pas avec les params ?
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

 private
  def task_params
    params.require(:task).permit(:title, :details)
  end
end
