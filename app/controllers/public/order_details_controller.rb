class Public::OrderDetailsController < ApplicationController

  def index

    @order_details = Orderdetail.all

    if params[:detail][:making_status] == "0"
      @order_details.making_status = 0
    elsif params[:detail][:making_status] == "1"
      @order_details.making_status = 1
    elsif params[:detail][:making_status] == "2"
      @order_details.making_status = 2
    elsif params[:detail][:making_status] == "3"
      @order_details.making_status = 3
    elsif params[:detail][:making_status] == "4"
      @order_details.making_status = 4
    end
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
    

    if params[:order_detail][:making_status] == "0"
      @order_detail.making_status = 0
    elsif params[:order_detail][:making_status] == "1"
      @order_detail.making_status = 1
    elsif params[:order_detail][:making_status] == "2"
      @order_detail.making_status = 2
    elsif params[:order_detail][:making_status] == "3"
      @order_detail.making_status = 3
    elsif params[:order_detail][:making_status] == "4"
      @order_detail.making_status = 4
    end

  end

end