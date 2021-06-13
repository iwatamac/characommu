class Place < ApplicationRecord
  has_many :characters, through: :place_characters
  has_many :place_characters
end
