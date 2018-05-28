class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    @todos = Todo.paginate(page: params[:page], per_page: 6)
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user = current_user
    if @todo.save
      flash[:success] = "Post successfully created!"
      redirect_to todo_path(@todo)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      flash[:success] = "Post successfully updated!"
      redirect_to todo_path(@todo)
    else
      render 'edit'
    end
  end

  def destroy
    @todo.destroy
    flash[:success] = "Post was successfully deleted!"
    redirect_to todos_path
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end

  def require_same_user
    if current_user != @todo.user && !current_user.admin?
      flash[:danger] = "You can only edit or delete your own todos"
      redirect_to todos_path
    end
  end
end
