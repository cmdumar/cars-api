json.array! cars do |car|
  json.id car.id
  json.model car.model
  json.price car.price
  json.top_speed car.top_speed
  json.range car.range
  json.peak_power car.peak_power
  json.images car.image_container.last
end
