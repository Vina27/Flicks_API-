class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :summary, :img_url
  has_many :actors 
  belongs_to :genre
  has_many :reviews 
  
end
