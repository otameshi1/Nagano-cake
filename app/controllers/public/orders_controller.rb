class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
  end

  def confirm
    @orders = Order.all
    @order = Order.new(order_params)
  end

  def create
    @order = Order.new(order_params)
    @order.save
    render :confirm
  end

  private
  def order_params
    params.require(:order).permit(:addresses_name, :postal_code, :payment_method, :name)
  end

end
