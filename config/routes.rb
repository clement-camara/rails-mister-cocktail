Rails.application.routes.draw do
  root to: 'cocktails#index'
  get 'cocktails', to: 'cocktail#index'
  get 'cocktails/:id', to: 'cocktails#show'
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  post 'cocktails/42', to: 'cocktails#create'

  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'

  resources :cocktail
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
