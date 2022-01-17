class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.datetime :birth_date
      t.string :photo
      t.string :account_bank
      t.float :balance , default:0
      t.string :password_bank

      t.timestamps
    end
  end
end
