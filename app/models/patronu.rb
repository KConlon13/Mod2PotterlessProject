class Patronu < ApplicationRecord
  belongs_to :user
  validates :animal, presence: true
  validates :meaning, presence: true
end
