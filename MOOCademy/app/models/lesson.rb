class Lesson < ApplicationRecord
	belongs_to :course
	validates :title, presence: true, length: {maximum: 80}
	validates :body, presence: true
end
