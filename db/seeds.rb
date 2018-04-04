# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'will_hill@ga.co'
u2 = User.create :email => 'stanley@ga.co'

Destination.destroy_all
d1 = Destination.create :name => 'Sydney'
d2 = Destination.create :name => 'Singapore'
d3 = Destination.create :name => 'Bangkok'
d4 = Destination.create :name => 'Tokyo'
