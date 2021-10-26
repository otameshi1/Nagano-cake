class Public::HomesController < ApplicationController
  def top
     @genres = Genre.all
     @products = Product.limit(3).order("created_at DESC")
  end

  def about
  end
end
