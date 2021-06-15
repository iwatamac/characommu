class Message < ApplicationRecord
  belongs_to :character
  belongs_to :place

  validates :content, presence:true
end
