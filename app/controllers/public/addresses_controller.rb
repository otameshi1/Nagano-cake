class Public::AddressesController < ApplicationController

  def index
    @address = Address.new
    @addresses = Address.all
  end

  def create
    address = Address.new(address_params)
    address.save
    redirect_to request.referer
  end

  def edit
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to address_index_path
  end

  def destroy
  end

  private
  def address_params
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
