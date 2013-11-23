require 'test_helper'

class SupportAgentMailerTest < ActionMailer::TestCase
  test "complaint_to_agent" do
    mail = SupportAgentMailer.complaint_to_agent
    assert_equal "Complaint to agent", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "close_to_app" do
    mail = SupportAgentMailer.close_to_app
    assert_equal "Close to app", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
