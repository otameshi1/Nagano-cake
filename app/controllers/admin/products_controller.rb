class Admin::ProductsController < ApplicationController
  def index
    @product = Product.page(params[:page]).per(10)
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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(item_params)
    redirect_to admin_products_path
  end

  private
  def item_params
    params.require(:product).permit(:introduction, :name, :genre_id, :price, :is_sale, :image)
  end


end
