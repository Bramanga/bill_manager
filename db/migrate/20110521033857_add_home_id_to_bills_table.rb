class AddHomeIdToBillsTable < ActiveRecord::Migration
  def self.up
    add_column :bills, :home_id, :integer
  end

  def self.down
    remove_column :bills, :home_id
  end
end

