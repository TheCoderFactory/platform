class Section < ActiveRecord::Base
  belongs_to :inclass
  default_scope order: 'sections.priority ASC'
  extend FriendlyId
  friendly_id :title, use: :slugged

  # def same_class(inclass)
  	
end
