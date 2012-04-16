ActiveAdmin.register Airport do
  config.clear_sidebar_sections! 
  
  show do |airport|
    attributes_table do
      row "Aiport Name" do |airport| airport.name end
      row "Latitude" do |airport| airport.latitude end
      row "Longitude" do |airport| airport.longitude end
      row "ICAO Code" do |airport| airport.icaocode end
    end
  end
  
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
