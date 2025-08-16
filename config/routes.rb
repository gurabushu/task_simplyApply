Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"

  resources :tasks,only: [:index, :show, :edit, :update, :new, :create, :destroy]

end
