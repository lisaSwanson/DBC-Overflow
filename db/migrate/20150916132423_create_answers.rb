class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.text :answer_desc, null: false
  		t.integer :user_id, null: false

  		t.timestamps null: true
  	end
  end
end
