# Preview all emails at http://localhost:3000/rails/mailers/survey_mailer
class SurveyMailerPreview < ActionMailer::Preview
  def survey_mail
    ticket = Ticket.first
    SurveyMailer.survey_mail(ticket)
  end
end

