Rails.application.routes.draw do

  namespace :admins do
    get 'prodacts/index'
    get 'prodacts/show'
    get 'prodacts/new'
    get 'prodacts/edit'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'

  namespace :public do
    get 'homes/top'
    get 'homes/about'

  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
