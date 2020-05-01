class User < ApplicationRecord
    validates_presence_of :username

    has_many :plants
    has_many :cart_plants
    has_many :plants, through: :cart_plants
    has_one :cart
    #has_many plants, through: :carts???
    #how to express users' 2 relationships with plants??
end
