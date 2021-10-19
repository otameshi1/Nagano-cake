class Public::OrderDetailsController < ApplicationController

  def index
    @order_details = OrderDetails.all
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
  end

end
