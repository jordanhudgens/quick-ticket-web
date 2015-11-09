class InventorySelection < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :ticket

  validate :inventory_qty_available?

  after_create :update_inventory

  def inventory_qty_available?
    if self.qty <= Inventory.find(self.inventory_id).qty
      true
    else
      errors.add(:qty, "There aren't enough items in the inventory database.")
      false
    end
  end

  def update_inventory
    inventory_record = Inventory.find(self.inventory_id)
    inventory_record.update!(qty: inventory_record.qty - self.qty)
  end
end
