json.array!(@announcements) do |announcement|
  json.extract! announcement, :title, :body, :icon, :link, :publish, :alert_level
  json.url announcement_url(announcement, format: :json)
end
