class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :email
      t.string :token
      t.integer :user_id

      t.timestamps
    end
    add_index :payments, :email
    add_index :payments, :token
    add_index :payments, :user_id
  end
end
