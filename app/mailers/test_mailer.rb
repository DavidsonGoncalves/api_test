class TestMailer < ApplicationMailer

  def test_mail
    mail(
      to: 'davidson.cg7@gmail.com',
      subject: 'Test Email from Rails Application',
      body: 'This is a test email sent from the Rails application.'
    )
  end
end
