class TasksController < ApplicationController

  def index
   @tasks = Task.order(created_at: :desc)
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
   @task = Task.create(task_params)
   if @task.save
    redirect_to root_path
   else
    render :new
   end
  end

 private
   def task_params
    params.require(:task).permit(:title, :sentence, :year_id, :month_id, :day_id, :dayofweek_id, :weather_id)
   end

end
