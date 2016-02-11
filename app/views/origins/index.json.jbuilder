json.array!(@origins) do |origin|
  json.extract! origin, :id, :location, :departure, :date, :airline
  json.url origin_url(origin, format: :json)
end
