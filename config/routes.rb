Rails.application.routes.draw do
  get 'transactions/new'

  get 'store/index'
  resources :charges

  post 'test_message' => "notifications#test_message", :as => "test_message"

  resources :orders
  resources :wish_list_items
  resources :wish_lists
  get 'wish_list/show'

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, controllers: { registrations: "devise_override/registrations" }

  resources :products
  root :to => 'store#index' , :as => 'store'

end
