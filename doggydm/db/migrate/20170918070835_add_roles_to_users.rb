class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :owner_role, :boolean, default: false
    add_column :users, :appreciator_role, :boolean, default: true
  end
end
