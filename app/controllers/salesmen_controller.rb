class SalesmenController < ApplicationController
    def index 
        @salesmen = Salesman.all
    end
end
