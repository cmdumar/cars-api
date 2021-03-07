class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.text :image_data
      t.string :type
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
