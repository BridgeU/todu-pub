Rails.application.routes.draw do
  root to: redirect("/lists")

  devise_for :users

  resources :todo_lists, path: "lists" do
    resources :todo_items, path: "items", shallow: true do
      member do
        put :mark_complete
      end
    end
  end
end
