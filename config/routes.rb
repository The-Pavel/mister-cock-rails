Rails.application.routes.draw do

  # get 'ingredients/index'

  # get 'ingredients/new'

  # get 'ingredients/create'

  # get 'ingredients/destroy'

  resources :ingredients, only: [:new, :create, :destroy, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
