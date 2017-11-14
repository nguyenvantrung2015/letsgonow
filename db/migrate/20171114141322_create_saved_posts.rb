class CreateSavedPosts < ActiveRecord::Migration[5.1]
	def change
		create_table :saved_posts do |t|
			t.integer :id_post, null: false
			t.integer :id_user, null: false

			t.timestamps
		end
	end
end
