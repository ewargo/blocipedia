class Payment < ActiveRecord::Base
  attr_accessible :amount, :stripe_txn_id, :user_id

  belongs_to :user
end
