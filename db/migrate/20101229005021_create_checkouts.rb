class CreateCheckouts < ActiveRecord::Migration
  def self.up
    create_table :checkouts do |t|
			t.date :return_date
      t.timestamps
    end
  end

  def self.down
    drop_table :checkouts
  end
end
