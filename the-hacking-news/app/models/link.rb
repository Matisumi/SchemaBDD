class Link < ApplicationRecord
	belongs_to :user 
	has_many :comments, as: :commentable

	VALID_URL_REGEX = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/
	validates :url, presence: true, length: {maximum: 2048}, format: { with: VALID_URL_REGEX }
end
