
class Salesman < ApplicationRecord
    has_many :purchase_orders
    has_many :customers, through: :purchase_orders
    validates :name, presence: :true
    has_one_attached :avatar do |attachable|
        attachable.variant :thumb, resize: "100x100"
    end

    def thumbnail
        image = Image.open(self.avatar)
        image.resize "100x100"
        image.format "png"
        image.write "output.png"
        image
    end
end
