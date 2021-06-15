class Place < ApplicationRecord
  has_many :place_characters
  has_many :characters, through: :place_characters
  has_many :messages

  validates :name, presence: true
  
end
