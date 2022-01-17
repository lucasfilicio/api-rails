class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.boolean :credit
      t.boolean :debit
      t.boolean :transfer
      t.float :value
      t.string :account_receive
      t.string :account_send
      t.references :account,  foreign_key: true

      t.timestamps
    end
  end
end
