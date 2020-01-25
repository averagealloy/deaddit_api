# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




2.times do |i|
    Comment.create!(the_comment: i, post_id: 2)
end 


2.times do |i|
    Comment.create!(the_comment: i, post_id: 3)
end 


2.times do |i|
    Comment.create!(the_comment: i, post_id: 5)
end 


2.times do |i|
    Comment.create!(the_comment: i, post_id: 4)
end 