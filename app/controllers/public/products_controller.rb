class Public::ProductsController < ApplicationController

    def index
        @products = Product.all
        @product = Product.page(params[:page])
    end
    
    def show
        @product = Product.find(params[:id])
        @cart = Cartitem.select.(:quantity)
    end
end
