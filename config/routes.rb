Rails.application.routes.draw do

  # ーーーーーーーーーー管理者側ーーーーーーーーーーーー
  # devise_for :admins, controllers: {
  # sessions: 'admins/sessions'
  #     }
  # ----上記はエラー部分のため、コメントアウトーーー

  namespace :admin do
    resources :customers,only: [:new, :create, :destory]
    resources :order_details,only: [:index, :show]
    resources :products,only: [:index, :show, :new, :edit, :update, :create]
    resources :genres,only: [:edit, :create, :index, :create, :update]
  end


 #  ーーーーーーーーーー顧客側ーーーーーーーーーーーー
  devise_for :customers, controllers: {
    sessions: 'pubics/sessions'
   }

  scope module: :public do
    root 'homes#top'
    get "homes/about" => "homes#about"
    resources :customers,only: [:edit, :update, :show]
      get 'customers/unsubscribe' => 'customers#unsubscribe'
      get 'customers/withdraw' => 'customers#withdraw'
    resources :address,only: [:edit, :update, :show, :destory, :index, :create]
    resources :orders,only: [:new, :create]
    resources :order_details,only: [:edit, :update, :show, :destory]
      get 'order_details/thanks' => 'order_details#thanks'
    resources :products,only: [:index, :show]
    resource :genres,only: [:index]
    resources :cart_items,only: [:show, :new, :create, :destroy]
     delete 'cart_items' => 'cart_items#destroy_all' 
    
  end


end
