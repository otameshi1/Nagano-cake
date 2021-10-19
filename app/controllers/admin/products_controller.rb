class Admin::ProductsController < ApplicationController
  def index
    @products= Product.all
  end

  def show
   @product = Product.find(params[:id])
 end

  def new
    @new_product = Product.new
  end
  
  def create
    @new_product = Product.new(item_params)
    @new_product.save!
     redirect_to admin_products_path
  end

  def edit
  end

  private
  def item_params
    params.require(:product).permit(:introduction, :name, :genre_id, :price, :is_sale, :image)
  end


end
