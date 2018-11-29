# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

wrigley = Dog.create!(name: "Wrigley", image_url: "https://www.dogster.com/wp-content/uploads/2018/07/dog-face-close-up-oils.jpg")

nickname1 = Nickname.create!(name: "Wiggly", dog_id: wrigley.id)
nickname2 = Nickname.create!(name: "Little dog", dog_id: wrigley.id)
nickname3 = Nickname.create!(name: "Trouble", dog_id: wrigley.id)

pet_role = Role.create!(role_name: "Pet")
service_role = Role.create!(role_name: "Service Dog")
therapy_role = Role.create!(role_name: "Therapy Dog")
alpha_role = Role.create!(role_name: "Alpha Dog")

wrigley.update(role_ids: [pet_role.id,alpha_role.id])
wrigley.save
