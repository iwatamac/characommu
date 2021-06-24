class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :characters
  has_many :messages

  with_options presence: true do
    validates :nickname, uniqueness: { case_sensitive: false }, length: { maximum: 40 }
    validates :password, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/, message: 'Include both letters and numbers'}
    validates :birthday
    validates :phone_number, numericality: {only_integer: true,message: 'is invalid. Input only number'},
                             length: { minimum: 10, maximum: 11, message: 'is too short' }
  end
end
