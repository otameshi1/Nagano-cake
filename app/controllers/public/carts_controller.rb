class Public::CartsController < ApplicationController

  # def new
  #   # @carts = Cartitem.all
  #   # @cart = Cartitem.new
  # end
  def create
    @cart = Cartitem.new(cart_params)
    @cart.customer_id = current_customer.id
    @cart.product_id = Product.find(params[:cartitem][:product_id]).id
    @cart.save!
    redirect_to new_cart_path
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
    params.require(:cartitem).permit(:product_id, :customer_id, :quantity)
  end

end
