class UserProfile < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nickname, use: :slugged
  mount_uploader :picture, PictureUploader
  belongs_to :user
  validates :nickname, :user, :picture, presence: true
end
