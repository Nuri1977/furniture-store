class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.references :category, null: false, foreign_key: true
      t.string :type_name

      t.timestamps
    end
  end
end
