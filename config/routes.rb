Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Display all
  get "tasks", to: "tasks#index"

  # Create task
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  # Edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # Delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

  # Show one
  get "tasks/:id", to: "tasks#show", as: :task

end
