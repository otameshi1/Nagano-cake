class Public::CartsController < ApplicationController

  def new
   @carts = current_customer.cartitems
  　　#@carts = Cartitem.all
 　　 # @carts.customer_id = current_customer.id
  end
  def create
    @cart = Cartitem.new(cart_params)
    if customer_signed_in?
      @cart.customer_id = current_customer.id
      @cart.product_id = Product.find(params[:cartitem][:product_id]).id
      @cart.save
      redirect_to new_cart_path
    else
      flash[:notice] = "ログイン又は新規登録をしてください"
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    @cart = Cartitem.find(params[:id])
    @cart.update(cart_params)
    redirect_to new_cart_path
  end

  def destroy
    cart_item = Cartitem.find(params[:id])
    cart_item.destroy
    redirect_to request.referer
  end

  def destroy_all
    @carts = current_customer.cartitems
    @carts.destroy_all
    redirect_to request.referer
  end

  private
  def cart_params
    params.require(:cartitem).permit(:product_id, :customer_id, :quantity)
  end

end
