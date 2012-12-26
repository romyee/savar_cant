class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :employee_id, :null => false
      t.string :first_name, :null => false
      t.string :last_name
      t.string :email, :null => false
      t.text :address
      t.string :phone
      t.string :designation
      t.integer :role, :default => 1
      t.string :username
      t.string :salt_key
      t.string :salted_password
      t.string :reset_hash

      t.timestamps
    end
  end
end
