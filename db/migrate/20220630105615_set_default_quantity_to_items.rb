class SetDefaultQuantityToItems < ActiveRecord::Migration[7.0]
  def change
    change_column_default :line_items, :quantity, 1
  end
end
