class ChangeColoumnNameToImageType < ActiveRecord::Migration[6.1]
  def change
    rename_column :pictures, :type, :category
  end
end
