Rails.application.routes.draw do

  # get 'ingredients/index'

  # get 'ingredients/new'

  # get 'ingredients/create'

  # get 'ingredients/destroy'

  resources :ingredients, only: [:new, :create, :destroy, :index] do
    resources :doses, only: [:new, :create, :destroy]
  end

  root to: 'ingredients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
