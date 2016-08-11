class TodoListsController < ApplicationController
  # Use CanCanCan to preload the @todo_list variable if user is allowed to see it
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    if @todo_list.save
      flash[:notice] = "List created"
      redirect_to @todo_list
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @todo_list.update(todo_list_params)
      flash[:notice] = "List updated"
      redirect_to @todo_list
    else
      render "edit"
    end
  end

  def destroy
    if @todo_list.destroy
      flash[:notice] = format(%(List "%s" deleted), @todo_list)
      redirect_to todo_lists_url
    else
      flash[:error] = format(%(Couldn't delete list "%s"), @todo_list)
      redirect_to @todo_list
    end
  end

  private

  def todo_list_params
    params.require(:todo_list).permit(:name)
  end
end
