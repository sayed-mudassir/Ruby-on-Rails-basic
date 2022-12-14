class Student < ApplicationRecord
	has_many :subjects, inverse_of: :student 
	# validates :name, presence: true, uniqueness: true
	# validates :roll_no, presence: true, uniqueness: true, length:{minimum: 2}
	# validates :class, presence: true, length:{maximum: 12 }
	enum status: { draft: 0 , published: 1}

	accepts_nested_attributes_for :subjects, reject_if: :all_blank, allow_destroy: true
end
