# spec/models/todo_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Car, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:appointments).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:top_speed) }
  it { should validate_presence_of(:range) }
  it { should validate_presence_of(:peak_power) }
end