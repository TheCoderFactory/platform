json.array!(@events) do |event|
  json.extract! event, :title, :description, :date, :start_time, :finish_time, :publish
  json.url event_url(event, format: :json)
end
