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
    @orders = Order.all
    @order = Order.new(order_params)
    @order.save
    redirect_to order_details_thanks_path
  end

  private
  def order_params
    params.require(:order).permit(:addresses_name, :postal_code, :payment_method, :name)
  end

end
