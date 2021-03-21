class RemoveImageContainer < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :image_container
  end
end
