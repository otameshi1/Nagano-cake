class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    render : confirm
  end

  def create
    @order = Order.new(order_params)
    render : confirm

  def confirm
    @order = Order.new(order_params)
    @order.save
    redirect_to 
  end

  private
  def order_params
    params.require(:order).permite(:addresses_name, :postal_code, :payment_method, :name)
  end
end
