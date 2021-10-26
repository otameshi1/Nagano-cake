class Public::SearchesController < ApplicationController

  def searches
    @value = params["search"]["value"]        #データを代入
    @how = params["search"]["how"]             #データを代入
    @datas = search_for(@how, @value)          #def search_forを実行(引数に検索ワードと検索方法)
  end


  private

  def match(value)
    #.orを使用することで、valueに一致するカラムのデータをnameカラムとgenre_idカラムから探してきます。
    Product.where(name: value).or(Product.where(genre_id: value))
  end

  def forward(value)                              #forward以降は商品名検索の定義しかしてません。
    Product.where("name LIKE ?", "#{value}%")
  end

  def backward(value)
    Product.where("name LIKE ?", "%#{value}")
  end

  def partical(value)
    Product.where("name LIKE ?", "%#{value}%")
  end


  def search_for(how, value)
    case how                     #引数のhowと一致する処理に進むように定義しています。
    when 'match'
    match(value)
    when 'forward'
      forward(value)
    when 'backward'
      backward(value)
    when 'partical'
      partical(value)
    end
  end
end



  # def searches
  #   if params[:seach].present?
  #     if params[:how] == match
  #       @product = Public.where("name LIKE ?", "#{params[:search]}")
  #     elsif params[:how] == partical
  #       @product = Public.where("name LIKE ?", "%#{params[:search]}%")
  #     end
  #     render :searches
  #   end
  # end

  # private

  # def match(value)
  #   Product.where(name: value)
  # end

  # def partical(value)
  #   Product.where(name: value)
  # end

  # def seach_for(how)
  #   case how
  #   when "match"
  #     match(value)
  #   when "partical"
  #     partical(value)
  #   end
  # end