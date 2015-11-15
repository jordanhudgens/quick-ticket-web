class InventorySelection < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :ticket

  validates_presence_of :qty, :inventory_id, :ticket_id

  validate :inventory_qty_available?

  after_create :update_inventory
  after_destroy :replenish_inventory
  after_update :edit_inventory_quantity

  def inventory_qty_available?
    if self.qty
      if self.qty <= Inventory.find(self.inventory_id).qty
        true
      else
        errors.add(:qty, ": Input quantity exceeds inventory items in stock. Enter a quantity less than " + Inventory.find(self.inventory_id).qty.to_s + " or update the inventory.")
        false
      end
    end
  end

  def update_inventory
    inventory_record = Inventory.find(self.inventory_id)
    inventory_record.update!(qty: inventory_record.qty - self.qty)
  end

  def replenish_inventory
    inventory_record = Inventory.find(self.inventory_id)
    inventory_record.update!(qty: inventory_record.qty + self.qty)
  end

  def edit_inventory_quantity
    inventory_record = Inventory.find(self.inventory_id)
    difference_in_value = self.qty - self.qty_was
    inventory_record.update!(qty: inventory_record.qty - difference_in_value)
  end
end
