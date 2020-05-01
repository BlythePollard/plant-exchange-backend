class Plant < ApplicationRecord
    belongs_to :user
    #has_many :cart_plants
    #has_many :carts, through: :cart_plants
end
