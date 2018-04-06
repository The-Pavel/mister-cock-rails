Rails.application.routes.draw do

  # resources :cocktails
  # get 'ingredients/index'

  # get 'ingredients/new'

  # get 'ingredients/create'

  # get 'ingredients/destroy'

  resources :cocktails do
     resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  resources :ingredients, only: [:new, :create, :destroy, :index] do
    member do
      get 'ingredient_cocktails', to: 'cocktails#filter'
    end
  end

  root to: 'ingredients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
