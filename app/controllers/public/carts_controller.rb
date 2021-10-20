class Public::CartsController < ApplicationController

  def new
    @carts = Cartitem.all
    @cart = Cartitem.new
  end

  def update
    cart = Cartitem.new(cart_params)
    cart.save
    redirect_to request.referer
  end

  def destroy
    cart_item = Cartitem.find(params[:id])
    cart_item.destroy
    redirect_to request.referer
  end

  def destroy_all
    cart_item = Cartitem.all
    cart_item.destroy
    redirect_to request.referer
  end

  private
  def cart_params
    params.require(:cartitem).permit(:quantity)
  end

end
