# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create([
  { first_name: "Christine", last_name: "Jishi", username: "christinejishi", email: "christine@gmail.com", password:"Password1"},
  { first_name: "Emily", last_name: "Lee", username: "emilylee", email: "emilylee@gmail.com", password:"Password1"},
  { first_name: "Melanie", last_name: "Kim", username: "mkim", email: "mkim@gmail.com", password:"Password1"},
  { first_name: "Carol", last_name: "Baskin", username: "carolbaskin", email: "carolbaskin@gmail.com", password:"Password1"},
  { first_name: "Bridget", last_name: "Choi", username: "bridgetc", email: "bridgetc@gmail.com", password:"Password1"},
])
