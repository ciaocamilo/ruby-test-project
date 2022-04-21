class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :person_name
      t.integer :ligth
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
