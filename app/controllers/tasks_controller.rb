class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destory]
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
   @task.user_id = current_user.id
   if @task.save
    redirect_to root_path
   else
    render :new
   end
  end

  def edit
    @task = Task.find(params[:id])
    redirect_to action: :index unless user_signed_in? && current_user.id == @task.user_id
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    if user_signed_in? && current_user.id == @task.user_id && @task.destroy
      redirect_to tasks_path
    else
      render :show
    end
  end

 private

   def task_params
    params.require(:task).permit(:title, :sentence, :year_id, :month_id, :day_id, :dayofweek_id, :weather_id).merge(user_id: current_user.id)
   end

end

