class User < ApplicationRecord
  has_many :appointments, dependent: :destroy

  # validations
  validates_presence_of :name, :email
end
