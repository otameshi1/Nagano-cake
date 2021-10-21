class Public::SearchesController < ApplicationController
  def searches
    if params[:seach].present?
      if params[:how] == match
        @product = Public.where("name LIKE ?", "#{params[:search]}")
      elsif params[:how] == partical
        @product = Public.where("name LIKE ?", "%#{params[:search]}%")
      end
      render :searches
    end
  end
  
  private
  
  def match(value)
    Product.where(name: value)
  end
  
  def partical(value)
    Product.where(name: value)
  end
  
  def seach_for(how)
    case how
    when 
  end
  
end
