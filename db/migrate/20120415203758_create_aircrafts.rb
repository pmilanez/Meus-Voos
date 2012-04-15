class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.string :manufacturer
      t.string :model
      t.string :register

      t.timestamps
    end
  end
end
