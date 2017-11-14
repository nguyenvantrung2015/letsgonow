class CreatePosts < ActiveRecord::Migration[5.1]
	def change
		create_table :posts do |t|
			t.integer :id_user, null: false
			t.string :content, null: false
			t.string :title, null: false
			t.string :address_name, null: false
			t.integer :id_district, null: false
			t.integer :cost
			t.string :vehicle
			t.integer :like_count, null: false
			t.integer :view, null: false
			t.boolean :accept, null: false

			t.timestamps
		end
	end
end
