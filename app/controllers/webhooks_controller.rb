class WebhooksController < ApplicationController
  before_action :authenticate_webhook

  private

  def authenticate_webhook
   provided_token = request.headers['X-Webhook-Token']

   unless provided_token.secure_compare(provided_token.to_s,  ENV['WEBHOOK_TOKEN'])
    render json: { error: 'Unauthorized' }, status: :unauthorized
    return
   end
  end
end
