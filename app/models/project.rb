class Project < ActiveRecord::Base
  belongs_to :week
  	extend FriendlyId
  	friendly_id :title, use: :slugged
end
