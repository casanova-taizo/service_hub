Rails.application.routes.draw do
  get 'welcome/create'
  devise_for :users, :controllers => {
 :registrations => 'users/registrations'
}
  root'services#index'
  resources :contents

  resources :categories

  namespace :admin do
    resources :services
  end

  resources :users, only: [:show, :update]

  resources :services do
    resources :comments do
      resource :good_comments
      resource :bad_comments
    end
    resource :goods
    resource :bads
    resource :favorites, only: [:create, :destroy]
  end
  post 'welcome' => 'welcome#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
