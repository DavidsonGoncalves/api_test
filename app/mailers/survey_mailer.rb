class SurveyMailer < ApplicationMailer

  def survey_mail(ticket)
     @ticket = ticket
    @link = surveys_new_url(uuid: ticket.uuid, rate: params[:rate])
    mail(to: @ticket.mail, subject: 'Pesquisa de Satisfação')
  end
end
