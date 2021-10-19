class Public::CartsController < ApplicationController

  def show
    @cart_items.id = current_user.id
    @cart_items　= CartItem.all
  end

end
