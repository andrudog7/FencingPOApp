class Type < ApplicationRecord
    has_many :items 
    has_many :line_items
end
