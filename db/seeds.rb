# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all 
User.destroy_all 
Genre.destroy_all 
Actor.destroy_all 
Movie.destroy_all

may = User.create(name: "may")
movie1 = Movie.create(
    name: "The War with Grandpa", 
    year: 2020, 
    summary: "Peter and his grandpa used to be very close, but when Grandpa Jack moves in with the family, Peter is forced to give up his most prized possession: his bedroom. Peter will stop at nothing to get his room back, scheming with friends to devise a series of pranks to drive him out. However, grandpa doesn't give up easily, and it turns into an all-out war between the two.", 
    img_url: "https://es.web.img2.acsta.net/pictures/17/04/06/16/47/470575.jpg")
review1 = Review.create(user_id: may.id, movie_id: movie1.id, review: "Amazing Movie!")
genre = Genre.create(title: "comedy", movie_id: movie1.id)
actor = Actor.create(name: "Robert De Niro", movie_id: movie1.id)