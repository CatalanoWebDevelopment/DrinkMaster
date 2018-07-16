class RecipeSerializer < ActiveModel::Serializer
    attributes :id, :name, :description
    has_many :ingredients
    belongs_to :liquor
end
