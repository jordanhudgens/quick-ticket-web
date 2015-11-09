class RemoveTicketReferenceFromInventories < ActiveRecord::Migration
  def change
    remove_column :inventories, :ticket_id, :integer
  end
end
