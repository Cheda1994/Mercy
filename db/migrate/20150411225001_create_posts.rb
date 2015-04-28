class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :email
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
