class CreateDedications < ActiveRecord::Migration
  def self.up
    create_table :dedications do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :dedications
  end
end
