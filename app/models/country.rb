class Country < ApplicationRecord
    has_many :cities
    has_many :sightseeings, through: :cities

    validates_presence_of :flag, :capital, :language, :currency, :area
    validates_presence_of :name, uniqueness: true

    # validates_inclusion_of :size, :in => ['xs', 's', 'm', 'l', 'xl', 'xxl']
    # validates_inclusion_of :in_stock, :in => [true, false]


    def update_city(city)
        if city.name == ''
            return "city name can't be blank"
        elsif city.description == ''
            return "please, add a description"
        else
            self.save
        end
    end
end
