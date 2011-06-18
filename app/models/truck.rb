class Truck < ActiveRecord::Base
  has_many :locations, :dependent => :destroy

  attr_accessible :name, :about, :created_at, :updated_at

  validates_uniqueness_of :name
  validates_presence_of :name

  def locations
    Location.where("truck_id = ?", self.id).order("created_at desc")
  end

  def self.find_by_search_query(q)
    Truck.find_all_by_name("%#{q}%")
  end
end
