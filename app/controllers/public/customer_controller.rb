class Public::CustomerController < ApplicationController

    def index
        @products = Product.all
    end
end
