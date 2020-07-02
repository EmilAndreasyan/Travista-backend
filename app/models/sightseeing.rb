class Sightseeing < ApplicationRecord
    belongs_to :city
    belongs_to :country

    validates_presence_of :category, :name, :image, :description
end
