Rails.application.routes.draw do
 # Read all
  # get "tasks", to: "tasks#index", as: :global
  # get "tasks/new", to: "tasks#new"
  # get "tasks/:id", to: "tasks#show", as: :tasking
  # get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  # post "tasks", to: "tasks#create"
  # patch "tasks/:id", to: "tasks#update"
  # delete "tasks/:id", to: "tasks#destroy"
  resources :tasks
end
