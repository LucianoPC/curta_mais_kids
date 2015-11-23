json.array!(@children_places) do |children_place|
  json.extract! children_place, :id, :name, :description, :rating, :price, :address, :photo, :phone, :localization
  json.url children_place_url(children_place, format: :json)
end
