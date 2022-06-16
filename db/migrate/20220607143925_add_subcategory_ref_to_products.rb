class AddSubcategoryRefToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :subcategory, null: false, foreign_key: true
  end
end
