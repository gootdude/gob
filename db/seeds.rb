# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require 'faker'
require 'populator'

Truck.destroy_all
Location.destroy_all

truck = Truck.new
truck.name = "Meatyballs 1"
truck.about = "I have 3 trucks! This is just one."
truck.save

truck = Truck.new
truck.name = "5411 Empanadas"
truck.about = "We are too popular"
truck.save

truck = Truck.new
truck.name = "Taquero Fusion"
truck.about = "Our food isn't very good and the line takes forever"
truck.save

messages = ["Just checked in!", "Come get some food", "Here for 20 minutes", "Make me some money"]
Truck.all.each do |truck|
  5.times do
    location = Location.new
    location.truck_id = truck.id
    location.message = messages[rand(messages.length - 1)]
    #41.886696
    location.latitude = rand(80000) / 1000000.0 + 41.86 #need to generate up to 6 digits of precision
    #-87.634689
    location.longitude = -87.65 + rand(40000) / 1000000.0 #need to generate up to 6 digits of precision
    location.save
  end
end