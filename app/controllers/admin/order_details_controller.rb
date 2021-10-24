class Admin::OrderDetailsController < ApplicationController
    # before_action :authenticate_ad
    def index
        @orders = Order.page(params[:page]).per(20)
        # @order = Cartitem.find(params[:id])
        # @product = Product.all
    end
    
    def show
        @order = Order.find(params[:id])
		@order_detail = @order.order_details
    end
    
    def update
        @order = Order.find(params[:id])
        @order_detail = @order.order_details
        @order_detail.update(order_update_params)
        
        binding.pry
        
        redirect_to admin_order_details_path
    end

    private
     def order_update_params
         params.require(:order_detail).permit(:making_status)
     end
end
