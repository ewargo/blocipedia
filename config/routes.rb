Blocipedia::Application.routes.draw do

  resources :wikis do
    resources :collaborators
  end

  devise_for :users

  get '/users/enter_payment', to: 'users#enter_payment'

  resources :users do
    member do
      post 'pay'
    end
  end

  resources :charges

  get "welcome/index"

  get "welcome/about"

  root to: 'welcome#index'
  
end