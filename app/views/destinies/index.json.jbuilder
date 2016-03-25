json.array!(@destinies) do |destiny|
  json.extract! destiny, :id, :location, :date, :airline
  json.url destiny_url(destiny, format: :json)
end
