class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :inventory_selections
  has_many :inventories, through: :inventory_selections

  validates_presence_of :title, :description, :hours, :customer
end