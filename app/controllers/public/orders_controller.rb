class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    render : 'confirm'
  end

  def confirm
  end

  private
  def order_params
    params.require(:order).permite(:addresses_name, :postal_code, :payment_method, :name)
  end
end
