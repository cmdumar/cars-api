json.array! cars do |car|
  json.id car.id
  json.model car.model
  json.price car.price
  json.top_speed car.top_speed
  json.range car.range
  json.peak_power car.peak_power
  car.image_container.each do |i|
    if valid?(i)
      obj = JSON.parse(i)
      json.logo obj['img'] if obj['category'] == 'logo'
    end
  end
  json.images car.image_container
end
