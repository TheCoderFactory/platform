class Week < ActiveRecord::Base
	has_many :links
	has_many :inclasses
	has_many :quizzes
	has_many :projects
	has_many :readings
	default_scope order: 'weeks.number ASC'
	scope :active, -> { where(active: true) } 
end
