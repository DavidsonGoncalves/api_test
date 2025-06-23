# Preview all emails at http://localhost:3000/rails/mailers/survey_mailer
class SurveyMailerPreview < ActionMailer::Preview
include Rails.application.routes.url_helpers

def survey_mail(ticket)
  @ticket = ticket
  @link = surveys_new_url(uuid: ticket.uuid, rate: params[:rate])

  mail(to: @ticket.mail, subject: 'Pesquisa de Satisfação')
end
end
