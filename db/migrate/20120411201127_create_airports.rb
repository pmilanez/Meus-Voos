class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :icaocode

      t.timestamps
    end
  end
end
