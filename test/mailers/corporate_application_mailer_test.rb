require 'test_helper'

class CorporateApplicationMailerTest < ActionMailer::TestCase
  test "send_application" do
    mail = CorporateApplicationMailer.send_application
    assert_equal "Send application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
