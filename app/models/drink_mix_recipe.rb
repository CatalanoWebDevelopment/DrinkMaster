class DrinkMixRecipe < ApplicationRecord
    belongs_to :drink_mix
    belongs_to :recipe
    
    scope :highest_rated, -> {where(rank: 10)}
end
