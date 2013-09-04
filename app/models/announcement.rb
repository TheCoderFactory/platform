class Announcement < ActiveRecord::Base
	scope :published, -> { where(publish: true) }
	
  default_scope order: 'announcements.created_at DESC'
end
