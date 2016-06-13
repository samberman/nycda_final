class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :fname
      t.string :lname
      t.string :phone
      t.integer :building_id
      t.integer :pickup_id

      t.timestamps null: false
    end
  end
end
