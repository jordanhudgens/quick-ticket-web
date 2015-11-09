class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :inventory_selections
  has_many :inventories, through: :inventory_selections
  has_many :labor_entries

  validates_presence_of :title, :description, :hours, :customer, :ticket_status

  after_initialize :set_defaults

  def set_defaults
    self.ticket_status ||= "Pending Approval"
  end
end