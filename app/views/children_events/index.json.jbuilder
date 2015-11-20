json.array!(@children_events) do |children_event|
  json.extract! children_event, :id, :title, :description, :rating, :price, :date_time, :phone, :localization
  json.url children_event_url(children_event, format: :json)
end
