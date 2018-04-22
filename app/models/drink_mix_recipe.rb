class DrinkMixRecipe < ApplicationRecord
    belongs_to :drink_mix
    belongs_to :recipe
end
