class Task2sController < ApplicationController
  before_action :set_task2, only: [:show, :edit, :update, :destroy]
  
  def index
    @task2s = Task2.all
  end
  
  def show
  end
  
  def new
    @task2 = Task2.new
  end
  
  def create
    @task2 = Task2.new(task2_params)
    
    if @task2.save
      flash[:success] = 'タスクが正常に投稿されました'
      redirect_to @task2
    else
      flash.now[:danger] = 'タスクが投稿されませんでした'
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @task2.update(task2_params)
      flash[:success] = 'タスクが正常に更新されました'
      redirect_to @task2
    else
      flash[:danger] = 'タスクが更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @task2.destroy
    
    flash[:success] = 'タスクが正常に削除されました'
    redirect_to task2s_url
  end
  
  
  private
  
  def set_task2
    @task2 = Task2.find(params[:id])
  end
  
  def task2_params
    params.require(:task2).permit(:content)
  end
end
