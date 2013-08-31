json.array!(@inclasses) do |inclass|
  json.extract! inclass, :week_id, :day, :title, :intro
  json.url inclass_url(inclass, format: :json)
end
