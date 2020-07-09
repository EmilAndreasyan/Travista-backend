class Country < ApplicationRecord
    has_many :cities

    validates_presence_of :language, :currency, :area
    validates_presence_of :name, :capital, uniqueness: true
    # validates :size, inclusion: {in: %w(small medium large), message: "%{value} is not a valid size"}

    # validates_inclusion_of :size, :in => ['xs', 's', 'm', 'l', 'xl', 'xxl']
    # validates_inclusion_of :in_stock, :in => [true, false]


    def update_city(city)
        if city.name == ''
            return "city name can't be blank"
        elsif city.name == self.city.name
            return "the city already exists"
        elsif city.description == ''
            return "please, add a description"
        else
            self.save
        end
    end
end
