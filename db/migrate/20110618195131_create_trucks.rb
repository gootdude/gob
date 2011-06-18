class CreateTrucks < ActiveRecord::Migration
  def self.up
    create_table :trucks do |t|
      t.string :name, :null => false
      t.string :about

      t.datetime :created_at, :null => false
      t.datetime :updated_at, :null => false
    end

    add_index :trucks, :name
  end

  def self.down
    drop_table :trucks
  end
end
