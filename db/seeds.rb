# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
user=User.create!(:email => "test@test.com", :password => "test12345", :password_confirmation => "test12345")

user1 = adduser("test@test.com", "test1234", true)
user2 = adduser("test2@test.com", "test1234", false)
user3 = adduser("test3@test.com", "test1234", false)
