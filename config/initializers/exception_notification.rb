if Rails.env == 'production' || Rails.env == 'development'

  exceptions = []
  exceptions << 'ActiveRecord::RecordNoFound'
  exceptions << 'AbstractController::ActionNoFound'
  exceptions << 'ActionController::RoutingError'
  exceptions << 'ActionController::InvalidAuthenticityToken'

  server_name = case Rails.env
                when 'production' then 'mystore.com'
                when 'staging' then 'staging.mystore.com'
                when 'development' then 'development.mystore.com'
                else 'unknown env mystore'
                end

  Rails.application.config.middleware.use ExceptionNotification::Rack,
                                          email: {
                                              # deliver_with: :deliver,
                                              email_prefix: "[#{server_name} error] ",
                                              sender_address: %{"error500" <error500@railsstore.com>},
                                              exception_recipients: %w(andre.ukrainets@gmail.com)
                                          },
                                          ignore_exceptions: exceptions

end
