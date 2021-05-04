require 'rails_helper'

describe Customer, type: :model do 
    let (:customer) {Customer.new}
    context "must have a name" do 
        it do
            customer.validate
            expect(customer.errors[:name]).to include("can't be blank")
        end
        it do 
            customer.name = "Andy"
            customer.validate
            expect(customer.errors[:name]).to_not include("name can't be blank")
        end
    end
end