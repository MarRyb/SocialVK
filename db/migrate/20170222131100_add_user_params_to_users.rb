class AddUserParamsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :authentication_token, :string
    add_index :users, :authentication_token
  end
end
