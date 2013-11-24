class SupportAgentMailer < ActionMailer::Base
  default from: "HelpDesk@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.support_agent_mailer.complaint_to_agent.subject
  #
  def complaint_to_agent(ticket)
    @ticket = ticket
    mail to: ticket.email, subject: "Sorry about your Problem!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.support_agent_mailer.close_to_app.subject
  #
  def problem_confirmation_to_user(ticket)
    @greeting = "Hi"

    mail to: "admin@example.com"
  end
end
