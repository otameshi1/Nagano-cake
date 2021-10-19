class Public::OrdersController < ApplicationController
  def confirm
    @order_details = OrderDetail.all
  end
end
