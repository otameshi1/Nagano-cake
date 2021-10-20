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
        @customer.update(is_deleted: true)
        reset_session
        redirect_to root_path
    end

    private

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :first_name_kana, :last_name_kana,
                                         :postal_code, :address, :phone_number, :email)
    end

end
