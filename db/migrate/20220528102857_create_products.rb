class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.boolean :show_price
      t.boolean :new_product
      t.boolean :on_promotion
      t.boolean :is_outlet
      t.text :dimensions

      t.timestamps
    end
  end
end
