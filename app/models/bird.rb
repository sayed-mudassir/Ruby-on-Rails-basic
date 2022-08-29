class Bird < ApplicationRecord
	validates :name, presence: true, length:{minimum:2, maximum:5}, uniqueness: true
	validates :size, presence: true, length:{minimum:2}
	enum status: { draft: 0 , published: 1}
end
