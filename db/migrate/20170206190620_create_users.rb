class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :bio
      t.string :avatarurl
      t.string :hobbie1
      t.string :hobbie2
      t.string :hobbie3
      t.string :fandom1
      t.string :fandom2
      t.string :fandom3


      t.timestamps
    end
  end
end
