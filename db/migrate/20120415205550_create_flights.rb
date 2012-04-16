class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.date :date
      t.references :origin
      t.references :destination
      t.references :aircraft
      t.string :observation
      t.integer :landings
      t.float :mono_hours
      t.float :multi_hours
      t.float :instructor_hours
      t.float :navigation_hours
      t.float :day_hours
      t.float :night_hours
      t.float :ifr_hours
      t.float :capota_hours
      t.float :dual_command_hours
      t.float :pilot_in_command_hours
      t.float :copilot_hours
      t.float :total_hours

      t.timestamps
    end
    add_index :flights, :origin_id
    add_index :flights, :destination_id
    add_index :flights, :aircraft_id
  end
end
