require 'rails_helper'
describe Item, type: :model do 
    describe "#full_description" do 
        let(:item) { Item.create(color: "blue", description: 'cap') }
        it "returns Item.color + Item.description" do 
            expect(item.full_description).to eq(item.color + " " + item.description)
        end
    end
end