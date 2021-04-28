class ItemsController < ApplicationController
    def index 
        @items = Item.all.sort_by(&:type)
    end

    def new 
        @item = Item.new
        @item.price_cards.build
    end

    def create 
        @item = Item.create(:color => item_params[:color], :description => item_params[:description], :type => Type.find(item_params[:type][:id]))
        price_card = PriceCard.new(item_params[:price_card])
        price_card.item = @item
        price_card.save
        @price_card = PriceCard.new(item: @item)
        render 'edit'
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
        params.require(:item).permit(:color, :description, {type: [:id], price_card: [:date, :aaa_price, :daytona_price]})
    end
end
