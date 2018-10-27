Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  namespace :admin do
    get 'services/index'
    get 'services/show'
    get 'services/new'
    get 'services/create'
    get 'services/edit'
    get 'services/update'
    get 'services/destroy'
  end
  get 'users/show'
  get 'comments/create'
  get 'comments/index'
  get 'services/index'
  get 'services/show'
  get 'services/new'
  get 'services/create'
  get 'services/edit'
  get 'services/update'
  get 'services/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end