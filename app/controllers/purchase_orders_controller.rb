class PurchaseOrdersController < ApplicationController
    def new 
        @purchase_order = PurchaseOrder.new
    end
    
    def create 
        @purchase_order = PurchaseOrder.new 
        @purchase_order.salesman = Salesman.find(purchase_order_params[:salesman][:id])
        @purchase_order.customer = Customer.find_or_create_by(name: purchase_order_params[:customer][:name])
        @purchase_order.save 
        @line_item = LineItem.create(purchase_order_id: @purchase_order.id)
        @purchase_order
        render 'show'
    end

    def show 
        @purchase_order = PurchaseOrder.find(params[:id])
    end

    private 

    def purchase_order_params
        params.require(:purchase_order).permit(salesman: [:id], customer: [:name])
    end
end
