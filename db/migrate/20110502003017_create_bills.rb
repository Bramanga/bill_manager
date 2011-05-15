class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.string :name
      t.decimal :amount
      t.date :posted_date
      t.date :due_date
      t.string :posted_by

      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
