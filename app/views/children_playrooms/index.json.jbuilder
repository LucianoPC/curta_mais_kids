json.array!(@children_playrooms) do |children_playroom|
  json.extract! children_playroom, :id, :name, :description, :rating, :price, :address, :photo, :phone, :localization
  json.url children_playroom_url(children_playroom, format: :json)
end
