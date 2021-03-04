class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy

  # validations
  validates_presence_of :name, :email, :password
end
