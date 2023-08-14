class Cpro < ApplicationRecord
    validates :name, presence:true, on create 
    validates :price, presence: {message:"price can;t khali"}
end
