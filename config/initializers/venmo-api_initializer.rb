Rails.application.config.before_initialize do
  ::Venmo = VenmoAPI::Client.new do |config|
    config.client_id = 1960
    config.secret = 'yWgRbw3pRL8ysEky4wb5hkFB8YPVLaPK'
    config.scope = ['make_payments', 'access_feed', 'access_profile', 'access_email', 'access_phone', 'access_balance', 'access_friends']
    config.response_type = 'code'
  end
end