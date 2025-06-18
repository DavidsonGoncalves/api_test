class SurveyMailer < ApplicationMailer
  default from: 'deivao.galoucura11@gmail.com'

  def survey_mail(ticket)
    @ticket = ticket
    mail(to: @ticket.mail, subject: 'Survey Test')
  end
end
