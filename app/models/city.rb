class City < ApplicationRecord
    belongs_to :country
    validates_presence_of :name
end
