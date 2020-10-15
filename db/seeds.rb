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
genre = Genre.create(title: "Comedy", movie_id: movie1.id)
actor = Actor.create(name: "Robert De Niro", movie_id: movie1.id)

movie2 = Movie.create(
    name: "Joker", 
    year: 2019, 
    summary: "“Joker” centers around the iconic arch-nemesis and is an original, standalone story not seen before on the big screen. The exploration of Arthur Fleck (Joaquin Phoenix), a man disregarded by society, is not only a gritty character study, but also a broader cautionary tale.", 
    img_url: "https://images-na.ssl-images-amazon.com/images/I/71H4EDEfcwL._AC_SL1500_.jpg")
review2 = Review.create(user_id: may.id, movie_id: movie2.id, review: "Excellent film from start to finish!")
genre = Genre.create(title: "Drama", movie_id: movie2.id)
actor = Actor.create(name: "Joaquin Phoenix", movie_id: movie2.id)

movie3 = Movie.create(
    name: "Gladiator", 
    year: 2000, 
    summary: "A man robbed of his name and his dignity strives to win them back and gain the freedom of his people in this epic historical drama from director Ridley Scott. In the year 180 the death of emperor Marcus Aurelius (Richard Harris) throws the Roman Empire into chaos. Maximus (Russell Crowe) is one of the Roman army's most capable and trusted generals and a key advisor to the emperor. As Marcus' devious son Commodus (Joaquin Phoenix) ascends to the throne Maximus is set to be executed. He escapes but is captured by slave traders. Renamed Spaniard and forced to become a gladiator Maximus must battle to the death with other men for the amusement of paying audiences. His battle skills serve him well and he becomes one of the most famous and admired men to fight in the Colosseum. Determined to avenge himself against the man who took away his freedom and laid waste to his family Maximus believes that he can use his fame and skill in the ring to avenge the loss of his family and former glory. As the gladiator begins to challenge his rule Commodus decides to put his own fighting mettle to the test by squaring off with Maximus in a battle to the death. Gladiator also features Derek Jacobi Connie Nielsen Djimon Hounsou and Oliver Reed who died of a heart attack midway through production.", 
    img_url: "https://images-na.ssl-images-amazon.com/images/I/71sj8Yt20qL._AC_SL1336_.jpg")
review3 = Review.create(user_id: may.id, movie_id: movie3.id, review: "Best Movie!")
genre = Genre.create(title: "Drama", movie_id: movie3.id)
actor = Actor.create(name: "Russell Crowe", movie_id: movie3.id)
