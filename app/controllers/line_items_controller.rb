class LineItemsController < ApplicationController

    def new
        byebug
        @items = Item.all.where(:type => params[:type])
    end

    def update
        @line_item = LineItem.find(params[:id])
        @item = Item.find(line_item_params[:item_id])
        byebug
    end

    private 

    def line_item_params
        params.require(:line_item).permit(:item_id, :quantity, :notes)
    end
end
