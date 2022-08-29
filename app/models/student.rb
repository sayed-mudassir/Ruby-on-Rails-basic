class Student < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :roll_no, presence: true, uniqueness: true, length:{minimum: 2}
	validates :class, presence: true, length:{maximum: 12 }
	enum status: { draft: 0 , published: 1}
end
