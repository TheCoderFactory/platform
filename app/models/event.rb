class Event < ActiveRecord::Base
	scope :published, -> { where(publish: true) }
	default_scope order: 'events.date ASC'
  	
  	def self.future(date)
	   where("date > ?", date)
	end
end
