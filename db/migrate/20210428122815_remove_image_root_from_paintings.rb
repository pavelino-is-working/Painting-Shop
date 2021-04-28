class RemoveImageRootFromPaintings < ActiveRecord::Migration[6.1]
  def change
    remove_column :paintings, :image_root, :string
    remove_column :paintings, :id_painting, :int
  end
end
