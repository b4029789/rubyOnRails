class Novel < ApplicationRecord

	belongs_to:author
	belongs_to:genre
	belongs_to:publisher

	validates:title, presence:true
end
