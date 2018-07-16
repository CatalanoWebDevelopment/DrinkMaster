class LiquorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :recipes
end
