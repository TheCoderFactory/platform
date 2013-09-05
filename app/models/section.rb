class Section < ActiveRecord::Base
  belongs_to :inclass
  default_scope order: 'sections.priority ASC'
end
