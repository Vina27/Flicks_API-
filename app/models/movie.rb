class Movie < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews 
    has_many :actors 
    has_many :genres 
end
