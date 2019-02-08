class Author < ApplicationRecord

	has_many:novels

	validates:fname, presence:true
	validates:lname, presence:true
	validates:bio, presence:true 

end
