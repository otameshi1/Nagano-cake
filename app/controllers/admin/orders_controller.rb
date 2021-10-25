class Admin::OrdersController < ApplicationController
  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_details_path
  end

  private
  def order_params
  params.require(:order).permit(:order_status)
  end
  
end
