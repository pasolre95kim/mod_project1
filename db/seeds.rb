toby = Dog.create(name: "Toby", breed: "Goldendoodle", age: 1)
bailey = Dog.create(name: "Bailey", breed: "Samoyed", age: 3)
diesel = Dog.create(name: "Diesel", breed: "Labrador", age: 2)
chanel = Dog.create(name: "Chanel", breed: "Poodle", age: 13)
louie = Dog.create(name: "Louie", breed: "Bichon Frise", age: 4)
henry = Dog.create(name: "Henry", breed: "Beagle", age: 1)
jenn = Dog.create(name: "Jenn", breed: "Yorkie", age: 10)
max = Dog.create(name: "Max", breed: "King Charles Spaniel", age: 2)
brownie = Dog.create(name: "Brownie", breed: "Morkie", age: 4)
mandy = Dog.create(name: "Mandy", breed: "Pekingnese", age: 5)

woofies = Groomer.create(name: "Woofie's", location: "111 Biscuit Circle")
barknscrub = Groomer.create(name: "Bark n' Scrub", location: "453 Doggie Street")
fromheadtotail = Groomer.create(name: "From Head to Tail", location: "990 Soft Fur Blvd")
doggystyle = Groomer.create(name: "Doggy Style", location: "1073 Cheese Treats Court")

appt1 = Appointment.create(day: "Monday", dog: toby, groomer: woofies, service: "Full Spa")
appt2 = Appointment.create(day: "Monday", dog: chanel, groomer: barknscrub, service: "Bubble Bath")
appt3 = Appointment.create(day: "Tuesday", dog: brownie, groomer: doggystyle, service: "Haircut")
appt4 = Appointment.create(day: "Wednesday", dog: mandy, groomer: fromheadtotail, service: "Shampoo & Conditioner")
appt5 = Appointment.create(day: "Thursday", dog: henry, groomer: barknscrub, service: "Full Service")
appt6 = Appointment.create(day: "Thursday", dog: louie, groomer: woofies, service: "Full Spa")
appt7 = Appointment.create(day: "Friday", dog: max, groomer: fromheadtotail, service: "Bubble Bath")
appt8 = Appointment.create(day: "Friday", dog:jenn, groomer: doggystyle, service: "Haircut")
appt9 = Appointment.create(day: "Saturday", dog: diesel, groomer: barknscrub, service: "Full Spa")
appt10 = Appointment.create(day: "Saturday", dog: bailey, groomer: woofies, service: "Haircut")


#how do I test the updated seed.rb without getting duplicates when running rake db:seed again
