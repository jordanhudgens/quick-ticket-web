class Inventory < ActiveRecord::Base
  has_many :inventory_selections, dependent: :destroy
  has_many :tickets, through: :inventory_selections

  validates_presence_of :title, :qty

  validates :qty, :numericality => { :greater_than_or_equal_to => 0 }

end
