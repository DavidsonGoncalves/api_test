class ApplicationController < ActionController::API
  rescue_from StandardError, with: :internal_error

  private

  def authenticate_webhook
   provided_token = request.headers['X-Webhook-Token']

   unless ActiveSupport::SecurityUtils.secure_compare(provided_token.to_s,  ENV['WEBHOOK_TOKEN'].to_s)
    render json: { error: 'Unauthorized' }, status: :unauthorized
    return
   end
  end

  def internal_error(exception)
    logger.error exception.message
    logger.error exception.backtrace.join("\n")
    render json: { error: 'Internal Server Error' }, status: :internal_server_error
  end

end
