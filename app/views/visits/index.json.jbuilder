json.array!(@visits) do |visit|
  json.extract! visit, :company, :phone, :email, :notes, :time_in, :time_out
  json.url visit_url(visit, format: :json)
end
