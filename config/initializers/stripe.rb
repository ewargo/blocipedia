Rails.configuration.stripe = {
  :publishable_key => 'sk_test_DVnOiPCwhyZB6FM6UnRGpxgZ',
  :secret_key      => 'pk_test_vvfQsXC8fAtenN6bGjjVExjy'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]