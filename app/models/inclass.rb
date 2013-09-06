class Inclass < ActiveRecord::Base
  belongs_to :week
  has_many :sections
  	extend FriendlyId
  	friendly_id :title, use: :slugged
end
