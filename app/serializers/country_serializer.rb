class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :flag, :capital, :language, :currency, :area
  has_many :cities
  has_many :sightseeings, through: :cities
end
