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

buckley = Dog.create(name:"Buckley", age:2, size:"M", kids_compatible: true, pets_compatible: true, image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/49562253_10155746791902676_6084641217184792576_o.jpg?_nc_cat=101&_nc_oc=AQlvi9JmJMJNcXPuClF1aicbzgCGegSu40iV-svgaREA8Rd4Xig7wbqNVZI-eIBQqXE&_nc_ht=scontent-lga3-1.xx&oh=8b5e008b86ae61c5048e7240770d32e3&oe=5D9B990B", fixed: true, vaccinated: true, bio:"he's wiggly!", trainer_id: null, owner_id: null)
