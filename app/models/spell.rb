class Spell < ApplicationRecord
    has_many :users, through: :wands
    has_many :wands
end
