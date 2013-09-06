class Week < ActiveRecord::Base
	has_many :links
	has_many :inclasses
	has_many :quizzes
	has_many :projects
	has_many :readings
	default_scope order: 'weeks.number ASC'
	scope :active, -> { where(active: true) } 
  	extend FriendlyId
  	friendly_id :title, use: :slugged

	def current_week?
		self.start_date <= Date.today && self.end_date > Date.today
	end

	def finished?
		self.end_date < Date.today
	end
end
