#if Rails.env == 'production' || Rails.env == 'development'
#
#  exceptions = []
#  exceptions << 'ActiveRecord::RecordNoFound'
#  exceptions << 'AbstractController::ActionNoFound'
#  exceptions << 'ActionController::RoutingError'
#  exceptions << 'ActionController::InvalidAuthenticityToken'
#
#  server_name = case Rails.env
#                when 'production' then 'mystore.com'
#                when 'staging' then 'staging.mystore.com'
#                when 'development' then 'development.mystore.com'
#                else 'unknown env mystore'
#                end
#
#  Cointicke
#
#end
