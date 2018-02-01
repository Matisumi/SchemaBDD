class User < ApplicationRecord

	has_many :pins, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :name, presence: true, length: {maximum: 20}

end
