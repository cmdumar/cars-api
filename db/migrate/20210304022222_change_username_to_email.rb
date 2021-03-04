class ChangeUsernameToEmail < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :username, :email
    change_column :users, :email, :string
  end
end
