json.array!(@visitors) do |visitor|
  json.extract! visitor, :vname
  json.url visitor_url(visitor, format: :json)
end
