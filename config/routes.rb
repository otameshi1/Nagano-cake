Rails.application.routes.draw do


  # ーーーーーーーーーー管理者側ーーーーーーーーーーーー
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
      }


  namespace :admin do
    resources :customers,only: [:new, :create, :destory]
    resources :orders_ditails,only: [:index, :show]
    resources :products,only: [:index, :show, :new, :edit, :update, :create]
    resources :genres,only: [:edit, :create, :index]
  end


 #  ーーーーーーーーーー顧客側ーーーーーーーーーーーー
  devise_for :customers, controllers: {
    sessions: 'public/customers/sessions',
    registrations: 'public/customers/registrations'
  }

  scope module: :public do
    root 'homes#top'
    get "homes/about" => "homes#about"
    resources :customers,only: [:edit, :update, :show]
      get 'customers/unsubscribe' => 'customers#unsubscribe'
      get 'customers/withdraw' => 'customers#withdraw'
    resources :address,only: [:edit, :update, :show, :destory, :index, :create]
    resources :orders,only: [:new, :create]
    resources :order_ditails,only: [:edit, :update, :show, :destory]
      get 'order_ditails/thanks' => 'order_ditails#thanks'
    resources :products,only: [:index, :show]
    resource :genres,only: [:index]
    resources :cart_items,only: [:show, :new, :create, :destroy]
     delete 'cart_items' => 'cart_items#destroy_all'
  end




end
