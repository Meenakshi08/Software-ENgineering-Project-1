json.array!(@furniture_spares) do |furniture_spare|
  json.extract! furniture_spare, :id, :SparePartID, :SparePartName, :Material, :Color, :Manufacturer, :QuantityAvailable, :Price, :Description
  json.url furniture_spare_url(furniture_spare, format: :json)
end
