class User < ApplicationRecord
    validates_presence_of :username

    has_many :plants
    #has_many :cart_plants
    #has_many :plants, through: :cart_plants
    #has_one :cart
end


#2.6.1 :004 > user.plants
#ActiveRecord::StatementInvalid (SQLite3::SQLException: no such column: cart_plants.user_id)

#How can user have plants (that they upload),
#but also have many plants (through their cart)