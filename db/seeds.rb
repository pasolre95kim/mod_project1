toby = Dog.create(name: "Toby", breed: "Goldendoodle", age: 1, picture: "https://cheausa.org/uploads/710/unbelievable-cute-english-goldendoodle-in-a-lamb-clip-haircut-dexdog-picture-for-dog-style-and-trend.jpg")
bailey = Dog.create(name: "Bailey", breed: "Samoyed", age: 3, picture: "https://www.russiandog.net/wp-content/uploads/2015/11/smiling-sammy-samoyed.jpg")
diesel = Dog.create(name: "Diesel", breed: "Labrador", age: 2, picture: "http://farm2.static.flickr.com/1170/533217509_ddf6349397.jpg")
chanel = Dog.create(name: "Chanel", breed: "Poodle", age: 13, picture: "https://pbs.twimg.com/media/DShCZrTUQAA0APO.jpg")
louie = Dog.create(name: "Louie", breed: "Bichon Frise", age: 4, picture: "http://dosoffice.com/sites/default/files/bichon.jpg")
henry = Dog.create(name: "Henry", breed: "Beagle", age: 1, picture: "https://adogslove.com/wp-content/uploads/2015/11/smiling-beagle.jpg")
jenn = Dog.create(name: "Jenn", breed: "Yorkie", age: 10, picture: "https://orig00.deviantart.net/96a6/f/2009/125/b/b/little_yorkie_by_vianjovic13.jpg")
max = Dog.create(name: "Max", breed: "King Charles Spaniel", age: 2, picture: "https://i.pinimg.com/originals/9c/07/f0/9c07f0e55b7cd4baf1099650f029b85d.jpg")
brownie = Dog.create(name: "Brownie", breed: "Welsh Corgi", age: 4, picture: "https://i.pinimg.com/originals/0c/c7/f2/0cc7f277d8bc8c0b26cabd60053c6e92.jpg")
mandy = Dog.create(name: "Mandy", breed: "Pomeranian", age: 5, picture: "https://images05.foap.com/images/1eeae65d-2376-46e4-96d1-dc91a0a4ad22/happy-puppy-he-s-my-baby-boy-a-4-year-old-pomeranian.jpg?filename=w1280&dw=960")

woofies = Groomer.create(name: "Woofie's", location: "111 Biscuit Circle")
barknscrub = Groomer.create(name: "Bark n' Scrub", location: "453 Doggie Street")
fromheadtotail = Groomer.create(name: "From Head to Tail", location: "990 Soft Fur Blvd")
doggystyle = Groomer.create(name: "Doggy Style", location: "1073 Cheese Treats Court")

service1 = Service.create(service: "Full Spa")
service2 = Service.create(service: "Color Treatment")
service3 = Service.create(service: "PAWdicure")
service4 = Service.create(service: "Shampoo & Conditioner")
service5 = Service.create(service: "Fabulous Skin Treatment")
service6 = Service.create(service: "Groom FURminator")
service7 = Service.create(service: "Bubble Bath with Rubber Duckies")
service8 = Service.create(service: "Ear Cleaning")
service9 = Service.create(service: "20min Brushing")

appt1 = Appointment.create(day: "Monday", dog: toby, groomer: woofies)
appt3 = Appointment.create(day: "Tuesday", dog: brownie, groomer: doggystyle)
appt4 = Appointment.create(day: "Wednesday", dog: mandy, groomer: fromheadtotail)
appt6 = Appointment.create(day: "Thursday", dog: louie, groomer: woofies)
appt8 = Appointment.create(day: "Friday", dog:jenn, groomer: doggystyle)
appt9 = Appointment.create(day: "Saturday", dog: diesel, groomer: barknscrub)
