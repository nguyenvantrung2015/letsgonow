class FixColumnName < ActiveRecord::Migration[5.1]
  def change
  	    rename_column :posts, :id_user, :user_id
  end
end
