Rails.application.routes.draw do


  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :admin do
    get 'products/index'
    get 'products/show'
    get 'products/new'
    get 'products/edit'
  end
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
  end

  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  
  
  devise_for :customers
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
