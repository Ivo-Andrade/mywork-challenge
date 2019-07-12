class CreateTimetrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :timetrackings do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :active
      t.datetime :clock_in
      t.datetime :clock_out
      t.string :comment
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
