class AddDermaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dermatologist, :boolean
  end
end
