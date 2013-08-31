json.array!(@readings) do |reading|
  json.extract! reading, :week_id, :title, :intro, :url
  json.url reading_url(reading, format: :json)
end
