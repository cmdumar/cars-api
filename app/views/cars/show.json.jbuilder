json.id car.id
json.model car.model
json.price car.price
json.top_speed car.top_speed
json.range car.range
json.peak_power car.peak_power
json.logo car.pictures.each do |i|
  json.img i.image_url if i.category == 'logo'
end
json.featuredImages car.pictures.each do |i|
  json.img i.image_url if i.category == 'featured'
end
