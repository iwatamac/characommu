class Place < ApplicationRecord
  has_many :place_characters, dependent: :destroy
  has_many :characters, through: :place_characters
  has_many :messages, dependent: :destroy

  validates :name, presence: true
  
end
