class Picture < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :car

  after_save do
    car = Car.find_by(id: car_id)
    obj = {
      img: self.image_url,
      category: self.category
    }
    car.image_container << obj.to_json
    car.save
  end
end
