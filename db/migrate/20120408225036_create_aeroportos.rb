class CreateAeroportos < ActiveRecord::Migration
  def change
    create_table :aeroportos do |t|
      t.string :nome
      t.float :latitude
      t.float :longitude
      t.string :icaocode

      t.timestamps
    end
  end
end
