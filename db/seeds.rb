# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#t.string "name"
#t.integer "age"
#t.string "size"
#t.boolean "kids_compatible"
#t.boolean "pets_compatible"
#t.string "image_url"
#t.boolean "fixed"
#t.boolean "vaccinated"
#t.text "bio"
#t.integer "trainer_id"
#t.integer "owner_id"
# Dog.destroy_all
# Breed.destroy_all
# Owner.destroy_all
# Trainer.destroy_all
# DogBreed.destroy_all

buckley = Dog.create(name:"Buckley", age:2, size:"M", kids_compatible: true, pets_compatible: true, image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/49562253_10155746791902676_6084641217184792576_o.jpg?_nc_cat=101&_nc_oc=AQlvi9JmJMJNcXPuClF1aicbzgCGegSu40iV-svgaREA8Rd4Xig7wbqNVZI-eIBQqXE&_nc_ht=scontent-lga3-1.xx&oh=8b5e008b86ae61c5048e7240770d32e3&oe=5D9B990B", fixed: true, vaccinated: true, bio:"he's wiggly!")
snoopy = Dog.create(name: "Snoopy", age: 4, size: "S", kids_compatible: true, pets_compatible: false, image_url: "https://cdn.theatlantic.com/assets/media/img/2015/09/30/BOB_Boxer_Peanuts_Opener_HP/1920.jpg?1443632690", fixed: true, vaccinated: true, bio:"he's grumpy!")

joe = Owner.create(name: "Joe")

bart = Trainer.create(name: "Bart", bio: "Friendly", availble_on_weekends: true)

lab = Breed.create(name: "Labrador Retriever", size: "M", temperament: "Friendly", life_expectancy: "12 years", description: "high energy")
pitbull = Breed.create(name: "American Pitbull Terrier", size: "L", temperament: "loyal", life_expectancy: "10 years", description: "strong")

DogBreed.create(dog: buckley, breed: lab)
DogBreed.create(dog: buckley, breed: pitbull)
DogBreed.create(dog: snoopy, breed: lab)
