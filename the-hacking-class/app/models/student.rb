class Student < ApplicationRecord
	belongs_to :course
	validates :name, presence: true, length: {maximum: 15}
end
