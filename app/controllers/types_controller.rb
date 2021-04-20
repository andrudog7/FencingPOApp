class TypesController < ApplicationController
    def show 
        @type = Type.find(params[:id])
        @items = @type.items 
        @line_item = LineItem.new 
        @line_item.type = @type 
        @line_item.purchase_order_id = params[:purchase_order]
        @line_item.save
        @line_item
        render 'show'
    end
end
