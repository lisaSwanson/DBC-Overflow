class CreateVotes < ActiveRecord::Migration
	def change
		create_table :votes do |t|
			t.integer :voted, null: false
			t.integer :vote_for_id, null: false
			t.string :vote_for_type, null: false

			t.timestamps null: false
		end
	end
end

