class Public::CartsController < ApplicationController

  def show
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
  end

  def destroy_all
  end

  private
  def cart_params
    params.require(:cart).permit(:quantity)
  end

end
