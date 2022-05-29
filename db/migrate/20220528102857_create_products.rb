class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :type, null: false, foreign_key: true
      t.string :product_name
      t.integer :price
      t.boolean :show_price, null: false, default: false
      t.boolean :new_product, null: false, default: false
      t.boolean :on_promotion, null: false, default: false
      t.boolean :is_outlet, null: false, default: false
      t.text :dimensions

      t.timestamps
    end
  end
end
