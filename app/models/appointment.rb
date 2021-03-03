class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # validations
  validates_presence_of :city, :date
end
