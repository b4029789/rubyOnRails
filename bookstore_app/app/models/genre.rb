class Genre < ApplicationRecord

	has_many:novels

	validates:name , presence: true, length: {minimum: 3}
end
