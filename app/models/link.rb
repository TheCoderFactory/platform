class Link < ActiveRecord::Base
  belongs_to :week
  acts_as_taggable
  acts_as_taggable_on :topics

  default_scope order: 'links.created_at ASC'
  scope :quick, -> { where(quick: true) }


end
