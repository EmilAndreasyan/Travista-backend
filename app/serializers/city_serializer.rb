class CitySerializer < ActiveModel::Serializer
  attributes :id, :country_id, :name, :image, :population, :description
  belongs_to :country
end
