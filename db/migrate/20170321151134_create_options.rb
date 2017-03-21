class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.string :value
      t.references :custom_field, foreign_key: true

      t.timestamps
    end
  end
end
