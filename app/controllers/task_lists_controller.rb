class TaskListsController < ApplicationController
  def index
    @task_lists = TaskList.all
  end
  
  def show
    @task_list = TaskList.find(params[:id])
  end
  
  def new
    @task_list = TaskList.new
  end
  
  def create
    @task_list = TaskList.new(task_list_params)
    
    if @task_list.save
      flash[:success] = 'TaskList が正常に投稿されました'
    else
      flash.now[:danger] = 'TaskList が投稿されませんでした'
      render :new
    end
  end
  
  def edit
    @task_list = TaskList.find(params[:id])
  end
  
  def update
    @task_list = TaskList.find(params[:id])
    
    if @task_list.update(task_list_params)
      flash[:success] = 'TaskList は正常に更新されました'
      redirect_to @task_list
    else
      flash.now[:danger] = 'TaskList は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @task_list = TaskList.find(params[:id])
    @task_list.destroy
    
    flash[:success] = 'TaskList は正常に削除されました'
    redirect_to task_lists_url
  end
  
  private
  
  def task_list_params
    params.require(:task_list).permit(:content)
  end
end
