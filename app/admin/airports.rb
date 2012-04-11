ActiveAdmin.register Airport do
  config.clear_sidebar_sections! 
  
  index do
    column :name
    column "ICAO Code", :icaocode
    default_actions
  end
  
  form do |f|
      f.inputs "Airport Information" do
        f.input :name, :label => "Aiport Name"
        f.input :latitude, :label => "Latitude (decimal format)"
        f.input :longitude, :label => "Longitude (decimal format)"
        f.input :icaocode, :label => "ICAO Code"
      end
      f.buttons
    end
    
end
