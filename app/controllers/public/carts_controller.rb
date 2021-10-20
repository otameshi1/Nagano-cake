class Public::CartsController < ApplicationController

  def new
    @cart_items.customer.id = current_user.id
    @cart_items　= CartItem.all
    @cart = CartItem.new
  end

  def create
    cart = CartItem.new(cart_params)
    cart.save
    redirect_to request.referer
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to request.referer
  end

  def destroy_all
    cart_item = CartItem.all
    cart_item.destroy
    redirect_to request.referer
  end

  private
  def cart_params
    params.require(:cart).permit(:quantity)
  end

end
