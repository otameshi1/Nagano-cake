class Public::OrderDetailsController < ApplicationController

  def index

    @order_details = OrderDetail.all

    if params[:making_status] == "0"
      @order_details.making_status = 0
    elsif params[:making_status] == "1"
      @order_details.making_status = 1
    elsif params[:making_status] == "2"
      @order_details.making_status = 2
    elsif params[:making_status] == "3"
      @order_details.making_status = 3
    elsif params[:making_status] == "4"
      @order_details.making_status = 4
    end
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
    @order_details = OrderDetail.all

    if params[:making_status] == "0"
      @order_detail.making_status = 0
    elsif params[:making_status] == "1"
      @order_detail.making_status = 1
    elsif params[:making_status] == "2"
      @order_detail.making_status = 2
    elsif params[:making_status] == "3"
      @order_detail.making_status = 3
    elsif params[:making_status] == "4"
      @order_detail.making_status = 4
    end

  end

end