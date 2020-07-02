class SightseeingSerializer < ActiveModel::Serializer
  attributes :id, :city_id, :category, :name, :image, :description
  belongs_to :city
  belongs_to :country
end
