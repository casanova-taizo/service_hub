Rails.application.routes.draw do
  devise_for :users, :controllers => {
 :registrations => 'users/registrations'
}
  resources :contents

  resources :categories

  namespace :admin do
    resources :services
  end

  resources :users, only: [:show]

  resources :services do
    resources :comments do
      resource :good_comments
      resource :bad_comments
    end
    resource :goods
    resource :bads
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
