class ImageElement < ApplicationRecord
  belongs_to :page
  has_one_arratached :image
end
