Rails.application.routes.draw do


  namespace :admin do
    get 'searches/searches'
  end
  # ーーーーーーーーーー管理者側ーーーーーーーーーーーー
  devise_for :admin, controllers: {
  sessions: 'admin/sessions'
      }


  namespace :admin do
    get 'admin/searches' => 'searches#searches'
    resources :customers,only: [:index, :show, :edit, :update]
    resources :order_details,only: [:index, :show, :update]
    resources :products,only: [:index, :show, :new, :edit, :update, :create]
    resources :genres,only: [:edit, :create, :index, :create, :update]
    resources :orders,only: [:update]
  end


 #  ーーーーーーーーーー顧客側ーーーーーーーーーーーー
  devise_for :customers, controllers: {
    sessions: 'public/customers/sessions',
    registrations: 'public/customers/registrations'
  }

  scope module: :public do
    root 'homes#top'
    get "homes/about" => "homes#about"
    get "/search" => "searches#searches"
    get 'customers/unsubscribe' => 'customers#unsubscribe'
    get 'customers/withdraw' => 'customers#withdraw'
    resources :addresses,only: [:edit, :update, :show, :destroy, :index, :create]

    post 'orders/confirm' => 'orders#confirm'

    resources :customers,only: [:edit, :update, :show]
    resources :orders,only: [:new, :create]
    get 'order_details/thanks' => 'order_details#thanks'
    resources :order_details,only: [:edit, :update, :show, :destory, :index]
    resources :products,only: [:index, :show]
    resource :genres,only: [:index]
    resources :carts,only: [:new, :update, :destroy, :create]
      delete 'carts' => 'carts#destroy_all', as: 'cart_destroy'
  end




end
