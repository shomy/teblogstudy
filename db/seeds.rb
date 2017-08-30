# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1.times do |n|
    id = 200
    email = Faker::Internet.email
    password = "password"
    name = Faker::Name.name
    User.create!(email:email,
    password:password,
    password_confirmation:password,
    name:name,
    id:id,
    )
end

1.times do |n|
    user_id = 200
    id= 100
    title = "db:seedの実験"
    content = "db:seedの実験"
    Topic.create!(user_id:user_id,
    id:id,
    title:title,
    content:content,
    )
end

1.times do |n|
    topic_id = 100
    user_id = 200
    content = "db:seedの実験"
    Comment.create!(user_id:user_id,
    topic_id:topic_id,
    content:content,
    )
end

