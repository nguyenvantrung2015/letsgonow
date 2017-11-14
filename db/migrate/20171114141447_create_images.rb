class CreateImages < ActiveRecord::Migration[5.1]
	def change
		create_table :images do |t|
			t.string :image, null: false
			t.integer :id_post, null: false


			t.timestamps
		end
	end
end
