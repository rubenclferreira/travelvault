json.array!(@accommodations) do |accommodation|
  json.extract! accommodation, :id, :name, :adress, :duration, :price, :rating
  json.url accommodation_url(accommodation, format: :json)
end
