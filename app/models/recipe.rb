class Recipe < ApplicationRecord
	has_many :ingridients, inverse_of: :recipe
	accepts_nested_attributes_for :ingridients, reject_if: :all_blank, allow_destroy: true
end
