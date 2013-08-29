class UserProfile < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nickname, use: :slugged
  belongs_to :user
  validates :nickname, :user, :picture, presence: true
end
