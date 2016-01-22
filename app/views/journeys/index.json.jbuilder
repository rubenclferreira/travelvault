json.array!(@journeys) do |journey|
  json.extract! journey, :id, :name, :description
  json.url journey_url(journey, format: :json)
end
