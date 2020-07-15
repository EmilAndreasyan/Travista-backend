class CitySerializer < ActiveModel::Serializer
  attributes :id, :country_id, :name, :image_url, :population, :description, :comment
end
