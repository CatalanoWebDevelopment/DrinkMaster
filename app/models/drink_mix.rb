class DrinkMix < ApplicationRecord
    has_many :drink_mix_recipes
    has_many :recipes, through: :drink_mix_recipes
    
    validates :name, presence: true
end
