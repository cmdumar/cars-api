json.array! @appointments do |i|
  json.id i.id
  json.model Car.find_by(id: i.car_id).model
  json.city i.city
  json.date i.date
end
