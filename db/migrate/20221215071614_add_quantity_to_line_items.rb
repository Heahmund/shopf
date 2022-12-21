class AddQuantityToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :quantity, :integer, default: 1
    add_column :line_items, :price, :decimal, default: 0
  end
end
