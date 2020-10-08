class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id, :review
end
