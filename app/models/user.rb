class User < ApplicationRecord
    has_many :plants
    has_many :cart_plants, through: :plants
    has_many :carts
end
