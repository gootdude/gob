class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :truck_id, :null => false
      t.string :latitude, :null => false
      t.string :longitude, :null => false
      t.string :message

      t.datetime :created_at, :null => false
      t.datetime :updated_at, :null => false
    end
  end

  def self.down
    drop_table :locations
  end
end
