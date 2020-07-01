class User < ApplicationRecord
    has_many :items
    validates_presence_of :email, :name, :age, :gender, :address
    validates_uniqueness_of :email
    validates_inclusion_of :gender, :in => ['male', 'female', 'other']
end
