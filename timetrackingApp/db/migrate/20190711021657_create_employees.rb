class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :contract_ID
      t.string :password
      t.string :profile_desc

      t.timestamps
    end
  end
end
