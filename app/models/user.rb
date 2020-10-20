class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :moives, through: :reviews
end
