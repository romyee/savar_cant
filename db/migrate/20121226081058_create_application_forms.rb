class CreateApplicationForms < ActiveRecord::Migration
  def change
    create_table :application_forms do |t|
      t.references :user
      t.references :form
      t.datetime :request_date
      t.string :type_of_move
      t.text :purpose
      t.text :duration
      t.string :tracking_id
      t.integer :status, :default => 1

      t.timestamps
    end
    add_index :application_forms, :user_id
    add_index :application_forms, :form_id
  end
end
