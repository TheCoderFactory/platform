json.array!(@chatrooms) do |chatroom|
  json.extract! chatroom, :name, :url
  json.url chatroom_url(chatroom, format: :json)
end
