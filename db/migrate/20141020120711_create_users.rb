class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.boolean :email_confirmation
      t.string :password_hash, null: false 

      t.timestamps null: true
    end
  end
end
