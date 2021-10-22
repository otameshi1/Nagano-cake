class Admin::CustomersController < ApplicationController
  
  def index
    @customer = Customer.page(params[:page]).per(3)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
     if @customer.update(customer_params)
     redirect_to admin_customers_path
    else
      render :edit
  end
  end

  private

  def customer_params
      params.require(:customer).permit(:first_name, :last_name, :first_name_kana, :last_name_kana,
                                       :postal_code, :address, :phone_number, :email)
  end


end
