class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :inventories

  validates_presence_of :title, :description, :hours, :customer
end