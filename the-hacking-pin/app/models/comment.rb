class Comment < ApplicationRecord

	belongs_to :pin, dependent: :destroy
	belongs_to :user
	
	validates :body, presence: true, length: {maximum: 140}

end
