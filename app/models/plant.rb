class Plant < ApplicationRecord
    belongs_to :user
    validates_presence_of :name, :description
    #has_many :cart_plants
    #has_many :carts, through: :cart_plants
end
