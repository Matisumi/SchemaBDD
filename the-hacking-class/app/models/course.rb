class Course < ApplicationRecord
	has_many :students

	validates :title, presence: true, length: {maximum: 40}
	validates :content, presence: true
end
