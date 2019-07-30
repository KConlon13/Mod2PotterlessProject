class Wand < ApplicationRecord
  belongs_to :user
  belongs_to :spell
  validates :wood, presence: true
  validates :length, presence: true
  validates :flexibility, presence: true
  validates :core, presence: true
end
