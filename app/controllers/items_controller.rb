class ItemsController < ApplicationController
    def index 
        @items = Item.all.sort_by(&:type)
    end

    def edit 
        @item = Item.find(params[:id])
        @price_card = PriceCard.new(item: @item)
    end
end
