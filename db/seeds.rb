# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Project.destroy_all

10.times do 
    Person.create(
        name: Faker::Name.name,
        age: rand(18..50),
        profession: Faker::Job.position
    )
end

5.times do 
    Project.create(
        name: Faker::Job.field
    )
end