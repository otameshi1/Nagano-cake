class Admin::OrderDetailsController < ApplicationController
    # before_action :authenticate_ad
    def index
        @details = Order_Detail.all
        @orders = Order.all
        @product = Product.all
    end
    
    def show
        @detail = Order_Detail.find(params[:id])
        @order = Order.find(order.id)
        @orders = Order_Detail.new
        @product = @Product.find(product.id)
    end
    
    private
    
     def order_update_params
         params.require(:detail).permit(:making_status)
     end
end
