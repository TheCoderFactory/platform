class Event < ActiveRecord::Base
	scope :published, -> { where(publish: true) }
  	
  	def self.future(date)
	   where("date < ?", date)
	end
end
