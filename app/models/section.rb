class Section < ActiveRecord::Base
  belongs_to :inclass
  default_scope { order(:priority) }
  extend FriendlyId
  friendly_id :title, use: :slugged
end
