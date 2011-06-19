# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

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

{"listed_count"=>0, "protected"=>false, "url"=>"http://www.flickr.com/photos/br0nc080/", "profile_text_color"=>"333333", "name"=>"Mike", "created_at"=>"Sun Mar 22 18:04:00 +0000 2009", "profile_sidebar_fill_color"=>"DDFFCC", "id_str"=>"25851576", "following"=>nil, "notifications"=>nil, "profile_background_tile"=>true, "utc_offset"=>-21600, "is_translator"=>false, "default_profile_image"=>false, "description"=>"", "contributors_enabled"=>false, "friends_count"=>70, "profile_link_color"=>"0084B4", "status"=>{"geo"=>nil, "created_at"=>"Thu Jun 16 04:00:38 +0000 2011", "id_str"=>"81209542549061633", "coordinates"=>nil, "text"=>"@bkish_delights oooooo", "favorited"=>false, "in_reply_to_status_id_str"=>"81207505484660737", "in_reply_to_screen_name"=>"bkish_delights", "in_reply_to_user_id_str"=>"26430313", "truncated"=>false, "id"=>81209542549061633, "contributors"=>nil, "retweeted"=>false, "source"=>"<a href=\"http://itunes.apple.com/us/app/twitter/id409789998?mt=12\" rel=\"nofollow\">Twitter for Mac</a>", "retweet_count"=>0, "place"=>nil, "in_reply_to_user_id"=>26430313, "in_reply_to_status_id"=>81207505484660737}, "default_profile"=>false, "favourites_count"=>9, "profile_sidebar_border_color"=>"BDDCAD", "followers_count"=>42, "profile_image_url"=>"http://a2.twimg.com/profile_images/106539542/Kool-AidMan_normal.jpg", "show_all_inline_media"=>false, "follow_request_sent"=>nil, "geo_enabled"=>false, "time_zone"=>"Central Time (US & Canada)", "id"=>25851576, "verified"=>false, "profile_use_background_image"=>true, "screen_name"=>"br0nc080", "lang"=>"en", "profile_background_color"=>"1d2c3f", "location"=>"Illinois", "statuses_count"=>665, "profile_background_image_url"=>"http://a0.twimg.com/profile_background_images/34772678/arrelious_benn2.jpg"}
