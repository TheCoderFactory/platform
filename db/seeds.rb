# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([{ :name => 'admin' }, { :name => 'user' }, { :name => 'student' },{ :name => 'VIP' }])
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Pete Argent', :email => 'pete@thecoderfactory.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.name
user.add_role :admin