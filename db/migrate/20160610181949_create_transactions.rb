class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :card_num
      t.integer :billing_address
      t.integer :pickup_address

      t.timestamps null: false
    end
  end
end
