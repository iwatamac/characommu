class Place < ApplicationRecord
  has_many :place_characters
  has_many :characters, through: :place_characters

  validates :name, presence: true
  
end
