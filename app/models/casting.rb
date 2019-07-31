class Casting < ApplicationRecord
  belongs_to :user
  belongs_to :spell
  validates :spell, uniqueness: true
end
