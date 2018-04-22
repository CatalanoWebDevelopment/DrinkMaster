class Recipe < ApplicationRecord
    has_many :user_recipes
    has_many :users, through: :user_recipes
    has_many :ingredients
    belongs_to :liquor
    
    has_many :drink_mix_recipes
    has_many :drink_mixes, through: :drink_mix_recipes                       
    accepts_nested_attributes_for :ingredients
    
    validates :name, presence: true
    validates :description, presence: true
    
    def self.search(query)
        if query
           self.where("name LIKE ?", "%#{sanitize_sql_like(query)}%")
        else
            self.all
        end 
    end
    
    def add_to_drinkmix(drinkmix)
        
    end
    
end

