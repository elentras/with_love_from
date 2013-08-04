json.array!(@visits) do |visit|
  json.extract! visit, 
  json.url visit_url(visit, format: :json)
end
