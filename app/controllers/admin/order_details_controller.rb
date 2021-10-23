class Admin::OrderDetailsController < ApplicationController
    # before_action :authenticate_ad
    def index
        @orders = Order.page(params[:page]).per(20)
        # @order = Cartitem.find(params[:id])
        # @product = Product.all
    end
    
    def show
        @order = Order.find(params[:id])
         # @product = Product.find(params[:id])
    end
    
    def update
        detail = OrderDetail.find(params[:id])
        detail = OrderDetail.order
        detail.making_status_auto_update
        redirect_to admins_order_details_path(@order)
        @order = Order.find(params[:id])
        @order.update(order_update_params)
        @order.order_detail_status_auto_update
        redirect_to admins_order_details
    end
    
    private
    
     def order_update_params
         params.require(:order_detail).permit(:making_status)
     end
end
