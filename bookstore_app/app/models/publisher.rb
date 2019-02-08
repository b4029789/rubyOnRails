class Publisher < ApplicationRecord

	has_many:novels
	validates:name, presence: true
	validates:country, presence: true
end
