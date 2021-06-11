class Character < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :image
  end
end
