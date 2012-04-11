class Airport < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :latitude, :on => :create, :message => "can't be blank"
  validates_presence_of :longitude, :on => :create, :message => "can't be blank"
  validates_presence_of :icaocode, :on => :create, :message => "can't be blank"
  
  validates_length_of :icaocode, :within => 4..4, :on => :create, :message => "ICAO CODE must be with 4 digits"
end
