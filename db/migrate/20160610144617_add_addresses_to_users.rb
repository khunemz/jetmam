class AddAddressesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :room, :string, :null => true, :limit => 10
    add_column :users, :building, :string, :null => true, :limit => 50
    add_column :users, :lane, :string, :null => true, :limit => 5
    add_column :users, :road, :string, :null => true, :limit => 50
    add_column :users, :address_number, :string, :limit => 10
    add_column :users, :village_number, :string, :limit => 10
    add_column :users, :subdistrict, :string, :limit => 60
    add_column :users, :district, :string, :limit => 60
    add_column :users, :province, :string, :limit => 40
    add_column :users, :postal, :string, :limit => 10
    add_column :users, :phone, :string, :limit => 20
  end
end
