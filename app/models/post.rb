class Post < ActiveRecord::Base
	# allows the objects body & title to be accessible by other files or objects.
	# according to Rails 4, protecting attributes is done in the controllers, no longer the models.
	# attr_accessible :body, :title
	# allow for many comments
	has_many :comments
	# validates that a body & title exist.
	validates_presence_of :body, :title
end
