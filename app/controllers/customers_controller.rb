class CustomersController < ApplicationController
    def index 
        @customers = Customer.all
        @customer = Customer.new 
    end

    def create
        if params["commit"] === "Search"
            @customers = Customer.where("lower(name) ~ ?", customer_params[:name].downcase)
            @customer = Customer.new
            render 'index'
        else
            render 'index'
        end
    end

    def show 
        @customer = Customer.find(params[:id])
    end

    private 
    def customer_params
        params.require(:customer).permit(:name)
    end
end
