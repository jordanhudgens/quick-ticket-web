class InventorySelection < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :ticket

  validate :inventory_qty_available?

  def inventory_qty_available?
    if self.qty <= Inventory.find(self.inventory_id).qty
      true
    else
      errors.add(:qty, "There aren't enough items in the inventory database.")
      false
    end
  end
end
