class Inventory < ActiveRecord::Base
  has_many :inventory_selections
  has_many :tickets, through: :inventory_selections
end
