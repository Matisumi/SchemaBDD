class Course < ApplicationRecord
	has_many :lessons, dependent: :destroy

	validates :title, presence: true, length: {maximum: 80}
	validates :description, presence: true, length: {maximum: 500}
end
