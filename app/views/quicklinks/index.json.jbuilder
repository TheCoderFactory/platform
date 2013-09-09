json.array!(@quicklinks) do |quicklink|
  json.extract! quicklink, :icon, :name, :url, :active, :important
  json.url quicklink_url(quicklink, format: :json)
end
