class TasksController < ApplicationController
  def index
    @tasks  = Task.order('limit_date').all
    @status = ['todo', 'doing', 'done']
  end

  def new
    @task = Task.new
  end

  def show
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def update
  end

  def destroy
  end

  private
    def task_params
      params.require(:task).permit(:task)
    end
end
