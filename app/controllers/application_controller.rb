class ApplicationController < ActionController::API

  def authenticate_webhook
   provided_token = request.headers['X-Webhook-Token']

   unless ActiveSupport::SecurityUtils.secure_compare(provided_token.to_s,  ENV['WEBHOOK_TOKEN'].to_s)
    render json: { error: 'Unauthorized' }, status: :unauthorized
    return
   end
  end

end
