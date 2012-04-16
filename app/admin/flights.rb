ActiveAdmin.register Flight do
  config.clear_sidebar_sections! 
  
  show do |flight|
    attributes_table do
      row :date
      row "Airport Origin" do |flight| flight.origin.name + " / "+ flight.origin.icaocode end
      row "Airport Destination" do |flight| flight.destination.name + " / "+ flight.destination.icaocode end
      row "Aircraft" do |flight| flight.aircraft.manufacturer + " " + flight.aircraft.model + " / " + flight.aircraft.register end
      row :landings
      row :total_hours
      h2 "Hours information:"
      table do
        tr do
          th "Mono" 
          th "Multi"
          th "Instruction"
          th "Navigation"
          th "Day"
          th "Night"
          th "IFR"
          th "Capota"
          th "Dual Command"
          th "Pilot in Command"
          th "Co-pilot"
        end
        tr do
          th flight.mono_hours.to_s
          th flight.multi_hours.to_s
          th flight.instructor_hours
          th flight.navigation_hours
          th flight.day_hours
          th flight.night_hours
          th flight.ifr_hours
          th flight.capota_hours
          th flight.dual_command_hours
          th flight.pilot_in_command_hours
          th flight.copilot_hours
        end
      end
    end
  end
  
  index do
    column :date
    column "Airport Origin" do |flight| flight.origin.name + " / "+ flight.origin.icaocode end
    column "Airport Destination" do |flight| flight.destination.name + " / "+ flight.destination.icaocode end
    column "Aircraft" do |flight| flight.aircraft.manufacturer + " " + flight.aircraft.model + " / " + flight.aircraft.register end
    column :landings, :sortable => false
    column "Total hours", :total_hours, :sortable => false
    default_actions
  end
  
  
  form do |f|
      f.inputs "Flight Information" do
        f.input :date, :as => :datepicker
        f.input :origin, :label => "Airport Origin", :collection => Airport.all.map{|airport| 
                                            [airport.name + " / "+ airport.icaocode, airport.id]}
                                            
        f.input :destination, :label => "Airport Destination", :collection => Airport.all.map{|airport| 
                                            [airport.name + " / "+ airport.icaocode, airport.id]}
                                            
        f.input :aircraft, :collection => Aircraft.all.map{|aircraft| 
                                            [aircraft.manufacturer + " " + aircraft.model + " / " + aircraft.register, aircraft.id]}
        f.input :observation
        f.input :landings
        f.input :mono_hours, :label => "Mono (hrs)" 
        f.input :multi_hours, :label => "Multi (hrs)"
        f.input :instructor_hours, :label => "Instruction (hrs)"
        f.input :navigation_hours, :label => "Navigation (hrs)"
        f.input :day_hours, :label => "Day (hrs)"
        f.input :night_hours, :label => "Night (hrs)"
        f.input :ifr_hours, :label => "IFR (hrs)"
        f.input :capota_hours, :label => "Capota (hrs)"
        f.input :dual_command_hours, :label => "Dual Command (hrs)"
        f.input :pilot_in_command_hours, :label => "Pilot in Command (hrs)"
        f.input :copilot_hours, :label => "Co-pilot (hrs)"
        f.input :total_hours, :label => "Total hours"
      end
      f.buttons
    end
end
