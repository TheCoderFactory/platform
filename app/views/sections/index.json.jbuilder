json.array!(@sections) do |section|
  json.extract! section, :day_id, :priority, :title, :content
  json.url section_url(section, format: :json)
end
