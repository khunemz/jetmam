class AddPaymentTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :card_last_four, :integer, :limit => 4
    add_column :users, :omise_customer_token, :string
    add_column :users, :paypal_customer_token, :string
  end
end
