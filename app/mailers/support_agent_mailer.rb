class SupportAgentMailer < ActionMailer::Base
  default from: "HelpDeskSupport@example.com"

  def complaint_to_agent(ticket)
    @ticket = ticket
    mail to: "helpadmin@example.com" , subject: "New Problem, ##{ticket.id}"
  end

  def problem_confirmation_to_user(ticket)
    @ticket = ticket
    mail to: ticket.email, subject: "Sorry about your Problem!"
  end
end
