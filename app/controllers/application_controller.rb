class ApplicationController < ActionController::API
  rescue_from StandardError, with: :internal_error

  private

  def authenticate_webhook

    timestamp = request.headers['X-Zendesk-Webhook-Signature-Timestamp']
    signature = request.headers['X-Zendesk-Webhook-Signature']
    body = request.raw_post
    secret = ENV['ZENDESK_WEBHOOK_SECRET']

    message = "#{timestamp}#{body}"
    digest = OpenSSL::HMAC.digest('sha256', secret, message)
    signature_local = Base64.strict_encode64(digest)

    unless ActiveSupport::SecurityUtils.secure_compare(signature_local, signature)
      render json: { error: 'Unauthorized' }, status: :unauthorized and return
    end
  end
  
end
