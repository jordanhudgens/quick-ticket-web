class CreateInventorySelections < ActiveRecord::Migration
  def change
    create_table :inventory_selections do |t|
      t.integer :inventory_id
      t.integer :ticket_id

      t.timestamps null: false
    end
  end
end
