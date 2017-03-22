class CreateCustomFields < ActiveRecord::Migration[5.0]
  def change
    create_table :custom_fields do |t|
      t.string :label
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
