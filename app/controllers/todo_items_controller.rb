class TodoItemsController < ApplicationController
  load_and_authorize_resource :todo_list
  load_and_authorize_resource through: :todo_list, shallow: true

  def show
    # AJAX requests just get a snippet of HTML representing the item
    if request.xhr?
      render partial: @todo_item
      return
    end

    # Non AJAX requests probably want to see the whole list
    redirect_to @todo_item.todo_list
  end

  def create
    if @todo_item.save
      flash[:notice] = "Item added"
      redirect_to @todo_item.todo_list
    else
      flash[:error] = "Item couldn't be added"
      redirect_to @todo_item.todo_list
    end
  end

  # JSON API endpoint for AJAX update
  def mark_complete
    return :unprocessable_entity if @todo_item.completed?

    success = @todo_item.update(completed: true)

    respond_to do |format|
      format.json do
        if success
          render json: @todo_item
        else
          return :unprocessable_entity
        end
      end
    end
  end

  private

  def todo_item_params
    params.require(:todo_item).permit(:title, :description)
  end
end
