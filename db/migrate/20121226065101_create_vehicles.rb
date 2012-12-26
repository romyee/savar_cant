class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_id
      t.references :vehicle_type
      t.string :unit_id
      t.string :vin_id
      t.text :description

      t.timestamps
    end
    add_index :vehicles, :vehicle_type_id
  end
end
