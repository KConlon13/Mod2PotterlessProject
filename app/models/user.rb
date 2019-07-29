class User < ApplicationRecord
  belongs_to :house
  has_one :patronu
  has_secure_password
end
