ActiveAdmin.register Aircraft do
  config.clear_sidebar_sections! 
  
  show do |aircraft|
    attributes_table do
      row "Manufacturer Name" do |aircraft| aircraft.manufacturer end
      row "Model" do |aircraft| aircraft.model end
      row "Aircraft Registration" do |aircraft| aircraft.register end
    end
  end
  
  index do
    column :manufacturer
    column :model
    column "Registration", :register
    default_actions
  end
  
  form do |f|
      f.inputs "Aircraft Information" do
        f.input :manufacturer, :label => "Manufacturer Name"
        f.input :model, :label => "Model"
        f.input :register, :label => "Aircraft Registration"
      end
      f.buttons
    end
  
end
