json.array! @cars.each_with_index do |car, _idx|
  json.id car.id
  json.model car.model
  json.price car.price
  json.top_speed car.top_speed
  json.range car.range
  json.peak_power car.peak_power
  json.picture car.pictures.each do |i|
    json.img i.image_url if i.category == 'logo'
  end
end
