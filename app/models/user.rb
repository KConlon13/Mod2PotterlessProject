class User < ApplicationRecord
  belongs_to :house
  has_many :spells, through: :castings
  has_one :patronu, :dependent => :destroy
  has_secure_password
  validates :name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
end
