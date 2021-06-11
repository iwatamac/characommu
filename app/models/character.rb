class Character < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name, uniqueness: { case_sensitive: false }, length: { maximum: 40 }
    validates :image
  end
    validates :residence, length: { maximum: 40 }
end
