class TodosController < ApplicationController
  # before_filter :authenticate

  def index
    authenticate
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
