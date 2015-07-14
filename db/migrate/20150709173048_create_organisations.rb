class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :url
      t.integer :card_number
      t.integer :sum

      t.timestamps null: false
    end
  end
end
