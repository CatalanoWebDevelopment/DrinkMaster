class Recipe < ApplicationRecord
    has_many :ingredients
    belongs_to :liquor
    
    validates :name, presence: true
    validates :description, presence: true
    
    def self.search(query)
        if query
           self.where("name LIKE ?", "%#{sanitize_sql_like(query)}%")
        else
            self.all
        end 
    end 
end

