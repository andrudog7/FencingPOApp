class SalesmenController < ApplicationController
    def index 
        @salesmen = Salesman.all
    end

    def new 
        @salesman = Salesman.new 
    end

    def create 
        @salesman = Salesman.create(salesmen_params)
        redirect_to salesmen_path
    end

    private 

    def salesmen_params
        params.require(:salesman).permit(:name, :avatar)
    end
end
