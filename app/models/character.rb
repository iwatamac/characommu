class Character < ApplicationRecord

  belongs_to :user

  with_options presence: true do
    validates :name
  end
end
