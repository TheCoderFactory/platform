json.array!(@sections) do |section|
  json.extract! section, :inclass_id, :priority, :title, :content
  json.url section_url(section, format: :json)
end
