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
    resource :comments
    resource :favorites, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
