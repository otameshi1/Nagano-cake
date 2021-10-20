class Public::CustomersController < ApplicationController

    def show
        @customer = Customer.find(params[:id])
    end

    def edit
        @customer = Customer.find(params[:id])
    end

    def update
        customer = Customer.find(params[:id])
        customer.update(customer_params)
        redirect_to customer_path(customer.id)
    end

    def unsubscribe
    end

    def withdraw
        @customer = current_customer
        if @customer.update(is_deleted: false)
        reset_session
        redirect_to root_path
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
