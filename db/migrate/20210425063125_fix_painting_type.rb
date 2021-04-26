class FixPaintingType < ActiveRecord::Migration[6.1]
  def change
  	rename_column :paintings, :type, :painting_type
  end
end
