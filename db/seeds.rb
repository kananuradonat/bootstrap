# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Blog.destroy_all

# 100.times do |index|
#   Blog.create!(name: Faker::Name.name ,
#                         email: Faker::Internet.email,
#                         content: Faker::Name.name)
# end

# p "Created #{Blog.count} blogs"







 1.upto(100) do  
  c = Blog.new(name: Forgery::Name.full_name, email: Forgery::Email.address, content:  Forgery::Internet.email_subject) 
  c.save
 end 

