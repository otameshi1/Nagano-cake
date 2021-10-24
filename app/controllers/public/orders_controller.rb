class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
  end

  def confirm
    @orders = current_customer.cartitems
    @order = Order.new(order_params)

    if params[:order][:payment_method] == "0"
      @order.payment_method = 0
    elsif params[:order][:payment_method] = "1"
      @order.payment_method = 1
    end

    if params[:order][:address_option] == "0"
      @order.addresses_name = current_customer.address
      @order.postal_code = current_customer.postal_code
      @order.name = current_customer.full_name
    elsif params[:order][:address_option] == "1"
      @address = Address.find(params[:order][:addresses_id])
      @order.addresses_name = @address.address
      @order.postal_code = @address.postal_code
      @order.name = @address.name
    elsif params[:order][:address_potion] == "2"
      @order.addresses_name = @order.addresses_name
      @order.postal_code = @order.postal_code
      @order.name = @order.name

    end

  end

  def create
     @order = Order.new(order_params)
     @order.save

     @cartitem = current_customer.cartitems
     @cartitem.each do |cartitem|
      @order_detail = OrderDetail.new
      @order_detail.quantity = cartitem.quantity
      @order_detail.purchase_price = cartitem.product.price * 1.1
      @order_detail.making_status = 0
      @order_detail.order_id = @order.id
      @order_detail.product_id = cartitem.product_id
      @order_detail.save
     end
    redirect_to order_details_thanks_path
  end

  private
  def order_params
    params.require(:order).permit(:addresses_name, :postal_code, :payment_method, :name,:postage, :customer_id, :addresses_name, :total_payment, :order_status)
  end



end
