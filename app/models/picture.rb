class Picture < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :car

  validates_presence_of :category, :car_id, :image
end
