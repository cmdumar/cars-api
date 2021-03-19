json.id car.id
json.model car.model
json.price car.price
json.top_speed car.top_speed
json.range car.range
json.peak_power car.peak_power
json.images do
  json.array! car.pictures.each do |i|
    json.url i.image_url
    json.category i.category
  end
end
