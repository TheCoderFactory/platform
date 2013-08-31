class Announcement < ActiveRecord::Base
	scope :published, -> { where(publish: true) }
end
