class Painting < ApplicationRecord
	belongs_to :user
	mount_uploader :image, ImageUploader

PAINTING_TYPE = %w{Watercolor Pastel Acrylic Charcoal Sketch Ink Spray Tempera Sand }

end
