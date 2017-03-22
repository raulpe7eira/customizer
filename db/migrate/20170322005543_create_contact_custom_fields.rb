class CreateContactCustomFields < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_custom_fields do |t|
      t.string :value
      t.references :contact, foreign_key: true
      t.references :custom_field, foreign_key: true

      t.timestamps
    end
  end
end
