class TaskController < ApplicationController

  def index
    task = Task.all
  end

  def show
    task = Task.find(params[:id])
    render :show
  end

  def new 
    task = Task.new
  end
  
  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to task_home_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(params.require(:task).permit(:name, :body))
      flash[:success] = "task item successfully updated!"
      redirect_to tasks_path(@task)
    else
      flash.now[:error] = "task item update failed"
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.present?
      @task.destroy
    end
    redirect_to task_home_path(@task)
end
  
  private

  def task_params
    params.require(:task).permit(:name, :details)
  end
end
