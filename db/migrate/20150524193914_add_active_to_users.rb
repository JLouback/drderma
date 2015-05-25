class AddActiveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :active, :boolean
  end
  def self.up
    add_column :users, :active, :boolean, :default => false, :null => false
    add_index  :users, :active
  end

  def self.down
    remove_index  :users, :active
    remove_column :users, :active
  end
end
