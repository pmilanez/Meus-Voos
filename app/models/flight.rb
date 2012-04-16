class Flight < ActiveRecord::Base
  belongs_to :origin, :class_name => "Airport", :foreign_key => "origin_id"
  belongs_to :destination, :class_name => "Airport", :foreign_key => "destination_id"
  belongs_to :aircraft, :class_name => "Aircraft", :foreign_key => "aircraft_id"
  
end
