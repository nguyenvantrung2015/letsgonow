class FixColumnName2 < ActiveRecord::Migration[5.1]
  def change
  	rename_column :comments, :id_user, :user_id
  end
end
