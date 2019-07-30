class Spell < ApplicationRecord
    has_many :users, through: :castings
    validates :name, presence: true
    validates :purpose, presence: true
end
