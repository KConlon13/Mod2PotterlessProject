class Spell < ApplicationRecord
    has_many :users, through: :wands
    has_many :wands
    validates :name, presence: true
    validates :purpose, presence: true
end
