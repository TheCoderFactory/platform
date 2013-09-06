class Link < ActiveRecord::Base
  belongs_to :week
  default_scope order: 'links.created_at ASC'
  scope :quick, -> { where(quick: true) }
end
