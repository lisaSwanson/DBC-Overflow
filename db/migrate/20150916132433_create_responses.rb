class CreateResponses < ActiveRecord::Migration
  def change
  	  create_table :responses do |t|
  		t.integer :user_id, null: false
  		t.integer :responded_to_id, null: false
  		t.string :responded_to_type, null: false

  		t.timestamps null: true
  	end
  end
end
