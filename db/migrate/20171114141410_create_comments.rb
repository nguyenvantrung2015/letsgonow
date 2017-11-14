class CreateComments < ActiveRecord::Migration[5.1]
	def change
		create_table :comments do |t|
			t.integer :id_post, null: false
			t.integer :id_user, null: false
			t.string :comment, null: false
			t.boolean :seen, null: false

			t.timestamps
		end
	end
end
