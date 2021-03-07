class Car < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :pictures, dependent: :destroy

  # validations
  validates_presence_of :model, :price, :top_speed, :range, :peak_power
end
