json.array!(@projects) do |project|
  json.extract! project, :week_id, :title, :intro
  json.url project_url(project, format: :json)
end
