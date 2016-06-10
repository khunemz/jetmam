class AddSocialTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook_customer_token, :string
    add_column :users, :twitter_customer_token, :string
  end
end
