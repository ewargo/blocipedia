class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :stripe_txn_id

      t.timestamps
    end
    add_index :payments, :user_id
  end
end
