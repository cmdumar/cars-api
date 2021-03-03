json.array! @cars.each_with_index do |item, _idx|
  json.id item.id
  json.model item.model
  json.price item.price
  json.top_speed item.top_speed
  json.range item.range
  json.peak_power item.peak_power
  json.createdAt item.created_at
  json.updatedAt item.updated_at
end
