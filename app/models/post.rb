class Post < ActiveRecord::Base
	scope :pending, -> { where(:published => false) }
	scope :approved, -> { where(:published => true) }
	validates_presence_of :body
	has_many :comments
	self.per_page = 30
end
