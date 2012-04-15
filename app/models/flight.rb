class Flight < ActiveRecord::Base
  has_one :origin, :class_name => "Airport", :foreign_key => "origin_id"
  has_one :destination, :class_name => "Airport", :foreign_key => "destination_id"
  has_one :aircraft, :class_name => "Aircraft", :foreign_key => "aircraft_id"
end
