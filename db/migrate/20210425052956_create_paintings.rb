class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.integer :id_painting
      t.string :name_painting
      t.string :img_root
      t.string :painting_type
      t.string :dominant_color
      t.decimal :price
      t.decimal :height
      t.decimal :width

      t.timestamps
    end
  end
end
