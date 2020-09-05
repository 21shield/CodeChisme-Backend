# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

users = [

    {
        name:"Barbara",
        username:"Barbi",
        password:"asdf",
        password_confirmation:"asdf",
        email:"barbie@gmail.com"
    },
    {
        name:"Netaly",
        username:"21shield",
        password:"asdf",
        password_confirmation:"asdf",
        email:"net@gmail.com"
    }
       
]

users.each do |user|
    User.create(user)
end


puts "Done Seeding users"

