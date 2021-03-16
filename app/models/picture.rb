class Picture < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :car

  after_save do
    car = Car.find_by(id: car_id)
    obj = {
      img: image_url,
      category: category
    }
    car.image_container << obj.to_json
    car.save
  end

  validates_presence_of :category, :car_id, :image
end
