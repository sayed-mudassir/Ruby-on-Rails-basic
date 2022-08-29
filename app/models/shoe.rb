class Shoe < ApplicationRecord
	validates_presence_of :brand, :size, :price
end
