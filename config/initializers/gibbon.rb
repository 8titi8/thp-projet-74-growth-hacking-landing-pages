# Définition des clés d'API Gibbon
# Gibbon::Request.api_key = ENV["MAILCHIMP_API_KEY"]
Gibbon::Request.api_key = Rails.application.credentials.dig(:MAILCHIMP_API_KEY)
Gibbon::Request.timeout = 30
Gibbon::Request.throws_exceptions = false
