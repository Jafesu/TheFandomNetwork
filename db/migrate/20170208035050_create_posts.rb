class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.text :post, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
