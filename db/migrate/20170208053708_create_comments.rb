class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :post

      t.timestamps
    end
  end
end
