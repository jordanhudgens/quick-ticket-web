class LaborEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :ticket

  validates_presence_of :user_id, :ticket_id, :hours

  after_create :update_ticket_hours
  after_destroy :remove_hours_from_ticket
  after_update :edit_ticket_hours

  def update_ticket_hours
    ticket = Ticket.find(self.ticket_id)
    ticket.update!(hours: ticket.hours + self.hours)
  end

  def remove_hours_from_ticket
    ticket = Ticket.find(self.ticket_id)
    ticket.update!(hours: ticket.hours - self.hours)
  end 

  def edit_ticket_hours
    ticket = Ticket.find(self.ticket_id)
    difference_in_value = self.hours - self.hours_was
    ticket.update!(hours: ticket.hours + difference_in_value)
  end
end
