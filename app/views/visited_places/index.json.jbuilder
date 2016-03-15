json.array!(@visited_places) do |visited_place|
  json.extract! visited_place, :id, :Place, :Price
  json.url visited_place_url(visited_place, format: :json)
end
