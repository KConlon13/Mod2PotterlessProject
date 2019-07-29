class User < ApplicationRecord
  belongs_to :house
  has_many :spells, through: :wands
  has_one :patronu, :dependent => :destroy
  has_secure_password

end
