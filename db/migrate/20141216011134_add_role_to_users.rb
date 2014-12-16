class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :string, :roll
  end
end
