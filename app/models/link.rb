class Link < ActiveRecord::Base
  belongs_to :week
  acts_as_taggable
  acts_as_taggable_on :topics

  default_scope order: 'links.created_at ASC'
  scope :quick, -> { where(quick: true) }

  # def self.by_week(week)
  #   where("week == ?", week)
  # end

  # def self.by_topic(topic)
  # 	where("topic == ?", topic)
  # end

end
