class CreateFormFields < ActiveRecord::Migration
  def change
    create_table :form_fields do |t|
      t.string :label
      t.string :answer_type
      t.text :answer_options
      t.references :form
      t.text :suggation

      t.timestamps
    end
    add_index :form_fields, :form_id
  end
end
