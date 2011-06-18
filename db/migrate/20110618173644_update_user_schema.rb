class UpdateUserSchema < ActiveRecord::Migration
  def self.up
    add_column :users, :phone,         :string
    add_column :users, :foursquare_id, :string
    add_column :users, :facebook_id,   :string

    add_index :users, :phone,         :unique => true
    add_index :users, :foursquare_id, :unique => true
    add_index :users, :facebook_id,   :unique => true
  end

  def self.down
    remove_column :users, :phone
  end
end
