class ItemsController < ApplicationController
    def index 
        @items = Item.all.sort_by(&:type)
    end

    def edit 
        @item = Item.find(params[:id])
        @price_card = PriceCard.new(item: @item)
    end

    def update 
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to edit_item_path(@item)
    end

    private 
    def item_params 
        params.require(:item).permit(:color, :description)
    end
end
