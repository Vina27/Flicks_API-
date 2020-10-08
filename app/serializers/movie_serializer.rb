class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :summary, :img_url
  has_many :actors 
  has_many :genres 
  has_many :reviews 
  
end
