json.extract! painting, :id, :id_painting, :name_painting, :img_root, :type, :dominant_color, :price, :height, :width, :created_at, :updated_at
json.url painting_url(painting, format: :json)
