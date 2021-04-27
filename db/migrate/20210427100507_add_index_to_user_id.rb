class AddIndexToUserId < ActiveRecord::Migration[6.1]
  def change
  	    add_index :paintings, :user_id 
  end
end
