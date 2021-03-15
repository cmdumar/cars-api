class AddImagesColumnToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :image_container, :string, array: true, default: []
  end
end
