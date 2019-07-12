class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.float :latitude
      t.float :longitude
      t.float :radius

      t.timestamps
    end
  end
end
