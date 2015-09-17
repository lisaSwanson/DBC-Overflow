class CreateTagMaps < ActiveRecord::Migration
	def change
		create_table :tag_maps do |t|
			t.integer :tag_id, null: false
			t.integer :question_desc_id, null: false

			t.timestamps null: false
		end
	end
end
