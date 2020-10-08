class GenreSerializer < ActiveModel::Serializer
  attributes :id, :title, :movie_id
end
