Rails.application.routes.draw do
  resources :contents
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  

  Rails.application.routes.draw do
  resources :contents
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  end
end
