json.array!(@weeks) do |week|
  json.extract! week, :number, :title, :intro, :active
  json.url week_url(week, format: :json)
end
