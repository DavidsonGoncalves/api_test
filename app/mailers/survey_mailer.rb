class SurveyMailer < ApplicationMailer

  def survey_mail(ticket)
    @ticket = ticket
    mail(to: @ticket.mail, subject: 'Survey Test')
  end
end
