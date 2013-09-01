class Quiz < ActiveRecord::Base
  belongs_to :week
  default_scope order: 'quizzes.created_at ASC'
end
