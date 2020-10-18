class Movie < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews 
    has_many :actors 
    belongs_to :genre
end
