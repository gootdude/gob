class Location < ActiveRecord::Base
  belongs_to :truck

  attr_accessible :name, :latitude, :longitude, :message, :created_at, :updated_at

end
