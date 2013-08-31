class Inclass < ActiveRecord::Base
  belongs_to :week
  has_many :sections
end
