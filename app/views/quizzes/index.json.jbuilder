json.array!(@quizzes) do |quiz|
  json.extract! quiz, :week_id, :title, :intro
  json.url quiz_url(quiz, format: :json)
end
