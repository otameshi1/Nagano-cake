class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customers.find(params[:id])
  end

  def edit
  end
end
