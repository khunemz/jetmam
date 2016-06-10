class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :color, :limit => 10
      t.string :size, :limit => 4
      t.string :neck, :limit => 10
      t.integer :amount
      t.decimal :total, :precision => 8 , :scale => 2
      t.integer :user_id , :null => true

      t.timestamps null: false
    end
  end
end
