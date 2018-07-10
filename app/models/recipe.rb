class Recipe < ApplicationRecord
    has_many :user_recipes
    has_many :users, through: :user_recipes
    has_many :ingredients
    belongs_to :liquor
    
    has_many :drink_mix_recipes
    has_many :drink_mixes, through: :drink_mix_recipes                       
    accepts_nested_attributes_for :ingredients,
        allow_destroy: true
    
    validates :name, presence: true
    validates :description, presence: true
    
    def self.search(query)
        if query
           self.all.select do |recipe| 
               recipe.name.downcase.include?(query.downcase)
           end
        else
            self.all
        end 
    end
    
end

