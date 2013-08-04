json.array!(@messages) do |message|
  json.extract! message, :content, :state
  json.url message_url(message, format: :json)
end
