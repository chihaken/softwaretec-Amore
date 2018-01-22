Rails.application.routes.draw do

root to:"sessions#new"
  get 'account_infomations/new'
  get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup'  => 'account_informations#new'
  post '/signup',  to: 'account_informations#create'
  resources :account_informations

  get 'menu/menu_bar'

  get 'inquiry/home'

  resources :messages do
   collection do
    get 'index'
    get 'show'
    get 'show2'
    get 'show3'
    get 'show4'
   end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
