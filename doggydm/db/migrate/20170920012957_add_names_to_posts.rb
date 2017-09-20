class AddNamesToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :names, :text
  end
end
