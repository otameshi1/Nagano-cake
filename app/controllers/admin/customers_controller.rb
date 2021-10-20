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
    if @customers.update(admin_customers_params)
     redirect_to admin_customers_path
    else
      render :edit
  end
  end
end
