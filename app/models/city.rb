class City < ApplicationRecord
    belongs_to :country
    has_many :sightseeings
    validates_presence_of :name, :image, :population, :description
end
