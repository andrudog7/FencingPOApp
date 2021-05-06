class SalesmenController < ApplicationController
    def index 
        @salesmen = Salesman.all
    end

    def new 
        @salesman = Salesman.new 
    end
end
