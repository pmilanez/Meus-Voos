class Aeroporto < ActiveRecord::Base
  validates :nome, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :icaocode, :presence => true, :length => { :minimum => 4 , :maximum => 4}
end
