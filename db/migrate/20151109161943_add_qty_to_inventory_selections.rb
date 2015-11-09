class AddQtyToInventorySelections < ActiveRecord::Migration
  def change
    add_column :inventory_selections, :qty, :integer
  end
end
