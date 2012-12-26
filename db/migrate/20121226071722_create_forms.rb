class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :title
      t.text :description
      t.text :note
      t.integer :status, :default => 1
      t.string :sub_title
      t.text :instructions

      t.timestamps
    end
  end
end
