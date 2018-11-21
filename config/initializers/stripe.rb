Rails.configuration.stripe = {
  publishable_key: "pk_test_vcVKqXANanaSrw0hwcgYzlbs",
  secret_key: "sk_test_QhbDmqFZjQSdszeAfVslNrIz"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
