class DrinkMix < ApplicationRecord
    has_many :drink_mix_recipes
    has many :recipes, through: :drink_mix_recipes
end
