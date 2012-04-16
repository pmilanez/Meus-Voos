class Aircraft < ActiveRecord::Base  
  # Relationships
  has_many :flights, :dependent => :destroy
end
