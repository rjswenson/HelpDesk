class SupportAgentMailer < ActionMailer::Base
  default from: "HelpDeskSupport@example.com"

  def complaint_to_agent(ticket)
    @ticket = ticket
    mail(
      :reply_to       => '4ff281484024fa908cb375d6359d12b7@inbound.postmarkapp.com',
      :subject        =>  'New Problem, ##{ticket.id}',
      :to             =>  'robin@taggd.it'
    )
  end

  def problem_confirmation_to_user(ticket)
    @ticket = ticket
    mail(
      :subject        =>  'Sorry about your problem!',
      :to             =>  ticket.email
    )
  end
end
