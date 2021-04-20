class LineItemsController < ApplicationController

    def new
        byebug
        @items = Item.all.where(:type => params[:type])
    end

    def create
        @line_item = LineItem.create(line_item_params)
        @line_item.calculate_total
        @purchase_order = @line_item.purchase_order
        render 'purchase_orders/show.html.erb'
    end

    private 

    def line_item_params
        params.require(:line_item).permit(:item_id, :quantity, :notes, :purchase_order_id, :type_id)
    end
end
