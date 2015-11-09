class InventorySelection < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :ticket
end
