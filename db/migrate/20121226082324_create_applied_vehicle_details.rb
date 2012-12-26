class CreateAppliedVehicleDetails < ActiveRecord::Migration
  def change
    create_table :applied_vehicle_details do |t|
      t.references :application_form
      t.references :vehicle_type
      t.integer :quantity
      t.references :user

      t.timestamps
    end
    add_index :applied_vehicle_details, :application_form_id
    add_index :applied_vehicle_details, :vehicle_type_id
    add_index :applied_vehicle_details, :user_id
  end
end
