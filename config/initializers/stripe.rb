Rails.configuration.stripe = {
  publishable_key: AdventuresOverThings::Application.credentials.publishable_key,
  secret_key: AdventuresOverThings::Application.credentials.secret_key
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
