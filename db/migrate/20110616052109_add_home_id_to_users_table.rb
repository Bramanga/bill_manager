class AddHomeIdToUsersTable < ActiveRecord::Migration
  def self.up
    add_column :users, :home_id, :integer
  end

  def self.down
    remove_column :users, :home_id
  end
end

