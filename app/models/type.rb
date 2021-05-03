class Type < ApplicationRecord
    has_many :items 
    has_many :line_items

    def total 
        self.items.count
    end
end
