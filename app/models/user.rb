class User < ApplicationRecord
    has_many :items
    validates_presence_of :email, :name, :age, :gender, :address
    validates_uniqueness_of :email
    # validates_inclusion_of :gender, :in => ['male', 'female', 'other'] # does not let User to be saved

    def update_item(item)
        if item.in_stock == false
            return 'sorry, this item is out of stock'
        elsif
            self.gender != item.gender
            return "sorry, we don't have this item for your gender"
        else
            self.save
        end
    end
end
