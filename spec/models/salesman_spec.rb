require 'rails_helper'

describe Salesman, type: :model do
    let (:salesman) {Salesman.new}
    
    it "Salesman must have first name" do 
        salesman.validate
        expect(salesman.errors[:name]).to include("can't be blank")

        salesman.name = "John"
        salesman.validate 
        expect(salesman.errors[:name]).to_not include("can't be blank")
    end
end

