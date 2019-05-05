class Image < ApplicationRecord
  belongs_to :house
  attachment :image
end
