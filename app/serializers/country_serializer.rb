class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :flag_url, :capital, :language, :currency, :area
  has_many :cities
end
