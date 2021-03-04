class ChangeEmailToUsername < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :email, :username
    change_column :users, :username, :string
  end
end
