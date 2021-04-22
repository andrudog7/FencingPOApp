class PriceCardsController < ApplicationController
    
    def create 
        @price_card = PriceCard.create(price_card_params)
        redirect_to edit_item_path(@price_card.item)
    end
    
    def destroy 
        @price_card = PriceCard.find(params[:id])
        @item= @price_card.item
        @price_card.destroy
        redirect_to edit_item_path(@item)
    end

    private 

    def price_card_params
        params.require(:price_card).permit(:date, :aaa_price, :daytona_price, :item_id)
    end
end
