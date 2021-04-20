class LineItemsController < ApplicationController

    def new
        byebug
        @items = Item.all.where(:type => params[:type])
    end
end
