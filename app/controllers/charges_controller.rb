class ChargesController < ApplicationController

def new
end

def create
  Stripe.api_key = "sk_test_DVnOiPCwhyZB6FM6UnRGpxgZ"
  token = params[:stripeToken]

  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      :amount => 500, # amount in cents, again
      :currency => "usd",
      :card => token,
      :description => "payinguser@example.com"
    )
    current_user.update_attribute :is_premium, true
  rescue Stripe::CardError => e
    redirect_to :back
  end
end

end
