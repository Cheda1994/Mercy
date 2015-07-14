class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :organisation_id
      t.integer :user_id
      t.float :price

      t.timestamps null: false
    end
  end
end
