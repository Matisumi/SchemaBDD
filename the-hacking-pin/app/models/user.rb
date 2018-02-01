class User < ApplicationRecord

	has_many :pins
	has_many :comments, through: :pins

	validates :name, presence: true, length: {maximum: 20}

end
