class CreateDonateTransactions < ActiveRecord::Migration
  def change
    create_table :donate_transactions do |t|
      t.integer :donate_id
      t.string :action
      t.integer :amount
      t.boolean :success
      t.string :authorization
      t.string :message
      t.text :params

      t.timestamps null: false
    end
  end
end
