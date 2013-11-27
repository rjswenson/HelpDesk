class Ticket < ActiveRecord::Base
  validates :email, presence: true
  validates :complainant_name, presence: true
  validates :problem, presence: true

  def self.find_and_update!(inbound)
    @tix_id = inbound.ticket_id.to_i
    ticket = Ticket.find(@tix_id)
    ticket.response += inbound.reply
    ticket.completed = inbound.completed.chomp.to_bool
    ticket.save!
  end
end
