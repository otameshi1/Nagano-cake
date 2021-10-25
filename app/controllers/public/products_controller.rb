class Public::ProductsController < ApplicationController

    def index
        @products = Product.page(params[:page]).per(6)
        @genres = Genre.all
    end

    def show
        @product = Product.find(params[:id])
        @cart = Cartitem.new
        @genres = Genre.all
    end

end
